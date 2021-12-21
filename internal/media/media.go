package media

import (
	"io"
	"path/filepath"
	"strings"

	"github.com/google/uuid"
)

// Store defines the interface for object storage.
type Store interface {
	Put(string, Permission, io.ReadSeeker) (string, error)
	Get(string, bool) string
	Delete(string) error
}

// NewFilename generates unique filename.
func NewFilename(filename string) string {
	ext := strings.ToLower(filepath.Ext(filename))
	return strings.Replace(uuid.New().String()+ext, "-", "", -1)
}
