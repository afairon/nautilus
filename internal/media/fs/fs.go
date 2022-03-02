package fs

import (
	"io"
	"io/ioutil"
	"net/url"
	"os"
	"path"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/internal/media"
)

type Client struct {
	DataPath string
	BaseURL  *url.URL
}

// NewStore creates a new filesystem media storage.
func NewStore(DataPath, BaseURL string) (media.Store, error) {
	base, err := url.Parse(BaseURL)
	if err != nil {
		return nil, err
	}

	return &Client{
		DataPath: path.Clean(DataPath),
		BaseURL:  base,
	}, nil
}

// NewStoreFromConfig creates a new filesystem media storage from configuration.
func NewStoreFromConfig(conf *config.FS) (media.Store, error) {
	return NewStore(
		conf.Path,
		conf.Base,
	)
}

// Put saves the file on the filesystem.
// If the saving process fails, it returns an empty string and an error.
// Else it returns the object id and no error.
func (c *Client) Put(filename string, perm media.Permission, reader io.ReadSeeker) (string, error) {
	buf, err := io.ReadAll(reader)
	if err != nil {
		return "", err
	}

	// Extract directory from filename.
	dir, filename := path.Split(filename)
	fullPath := path.Join(c.DataPath, dir)
	if err = os.MkdirAll(fullPath, 0755); err != nil {
		return "", err
	}

	// Generate unique filename.
	filename = media.NewFilename(filename)

	// Join directory and filename.
	file := path.Join(fullPath, filename)
	err = ioutil.WriteFile(file, buf, permission(perm))
	if err != nil {
		return "", err
	}

	// Generate object id.
	filename = path.Join(dir, filename)

	return filename, nil
}

// Get returns an url to the object relative to the endpoint.
func (c *Client) Get(filename string, signed bool) string {
	// Clone base url
	link, err := url.Parse(c.BaseURL.String())
	if err != nil {
		return ""
	}

	link.Path = path.Join(link.Path, filename)
	return link.String()
}

// Delete deletes the file if it exists.
func (c *Client) Delete(filename string) error {
	file := path.Join(c.DataPath, filename)
	if _, err := os.Stat(file); os.IsNotExist(err) {
		return nil
	}

	return os.Remove(file)
}

// permission returns os filemode.
func permission(permission media.Permission) os.FileMode {
	switch permission {
	case media.PRIVATE:
		return 0600
	case media.PUBLIC_READ:
		return 0644
	default:
		return 0600
	}
}
