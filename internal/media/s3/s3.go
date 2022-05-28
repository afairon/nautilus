package s3

import (
	"io"
	"mime"
	"path"
	"path/filepath"
	"time"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/internal/media"
	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/credentials"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/private/protocol/rest"
	"github.com/aws/aws-sdk-go/service/s3"
)

type Client struct {
	Bucket   string
	client   *s3.S3
	duration time.Duration
}

// NewStore creates a new S3 media storage.
func NewStore(endpoint, accessKey, secretKey, region, bucket string, duration time.Duration) (media.Store, error) {
	config := aws.Config{
		Endpoint:         aws.String(endpoint),
		Credentials:      credentials.NewStaticCredentials(accessKey, secretKey, ""),
		Region:           aws.String(region),
		S3ForcePathStyle: aws.Bool(true),
	}

	session, err := session.NewSessionWithOptions(session.Options{Config: config})
	if err != nil {
		return nil, err
	}

	client := s3.New(session)

	return &Client{Bucket: bucket, client: client, duration: duration}, nil
}

// NewStoreFromConfig creates a new S3 media storage from configuration.
func NewStoreFromConfig(conf *config.S3) (media.Store, error) {
	return NewStore(
		conf.Endpoint,
		conf.AccessKey,
		conf.SecretKey,
		conf.Region,
		conf.Bucket,
		time.Duration(conf.Duration)*time.Minute,
	)
}

// Put saves the file on S3.
// If the saving process fails, it returns an empty string and an error.
// Else it returns the object id and no error.
func (c *Client) Put(filename string, perm media.Permission, reader io.ReadSeeker) (string, error) {
	// Extract directory from filename.
	key, filename := path.Split(filename)

	// Generate unique filename.
	filename = media.NewFilename(filename)

	// Join key and filename.
	file := path.Join(key, filename)

	// Create input object
	putObjectInput := &s3.PutObjectInput{
		Body:        reader,
		Bucket:      aws.String(c.Bucket),
		Key:         aws.String(file),
		ContentType: aws.String(mime.TypeByExtension(filepath.Ext(filename))),
	}

	// Set ACL
	if perm == media.PRIVATE {
		putObjectInput.ACL = aws.String("private")
	} else {
		putObjectInput.ACL = aws.String("public-read")
	}

	// Put object
	_, err := c.client.PutObject(putObjectInput)
	if err != nil {
		return "", err
	}

	return file, nil
}

// Get returns an url to the object relative to the endpoint.
func (c *Client) Get(filename string, signed bool) string {
	// Create get object req
	getObjectInput := s3.GetObjectInput{
		Bucket: aws.String(c.Bucket),
		Key:    aws.String(filename),
	}

	req, _ := c.client.GetObjectRequest(&getObjectInput)

	if !signed {
		rest.Build(req)
		return req.HTTPRequest.URL.String()
	}

	// Sign url
	urlStr, err := req.Presign(c.duration)
	if err != nil {
		return ""
	}

	return urlStr
}

// Delete deletes the file if it exists.
func (c *Client) Delete(filename string) error {
	// Create delete object req
	deleteObjectInput := s3.DeleteObjectInput{
		Bucket: aws.String(c.Bucket),
		Key:    aws.String(filename),
	}

	_, err := c.client.DeleteObject(&deleteObjectInput)
	if err != nil {
		return err
	}

	return nil
}
