package mail

import (
	"bytes"
	"io"
	"mime"
	"net/textproto"
	"os"
	"path/filepath"
)

type Mailer interface {
	Send(mail Mail) error
	Close() error
}

type Mail struct {
	From        string
	To          []string
	Cc          []string
	Bcc         []string
	ContentType ContentType
	Headers     textproto.MIMEHeader
	Subject     string
	Body        []byte
	Attachments []Attachment
}

type Attachment struct {
	Filename string
	Header   textproto.MIMEHeader
	Content  []byte
}

func (m *Mail) Attach(r io.Reader, filename string, ct string) error {
	var buffer bytes.Buffer
	if _, err := io.Copy(&buffer, r); err != nil {
		return err
	}

	at := Attachment{
		Filename: filename,
		Header:   textproto.MIMEHeader{},
		Content:  buffer.Bytes(),
	}

	if ct != "" {
		at.Header.Set("Content-Type", ct)
	} else {
		at.Header.Set("Content-Type", "application/octet-stream")
	}

	at.Header.Set("Content-Disposition", "attachment; filename="+filename)
	at.Header.Set("Content-Transfer-Encoding", "base64")
	return nil
}

func (m *Mail) AttachFile(path string) error {
	f, err := os.Open(path)
	if err != nil {
		return err
	}
	defer f.Close()

	ct := mime.TypeByExtension(filepath.Ext(path))
	filename := filepath.Base(path)
	return m.Attach(f, filename, ct)
}
