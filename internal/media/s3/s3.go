package s3

import (
	"io"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/internal/media"
	_ "github.com/aws/aws-sdk-go/aws"
	_ "github.com/aws/aws-sdk-go/aws/credentials"
	_ "github.com/aws/aws-sdk-go/aws/session"
	_ "github.com/aws/aws-sdk-go/service/s3"
)

type Client struct{}

func NewStore() media.Store {
	return &Client{}
}

func NewStoreFromConfig(conf *config.S3) media.Store {
	return NewStore()
}

func (c *Client) Put(filename string, perm media.Permission, reader io.ReadSeeker) (string, error) {
	return "", nil
}

func (c *Client) Get(filename string, signed bool) string {
	return ""
}

func (c *Client) Delete(filename string) error {
	return nil
}
