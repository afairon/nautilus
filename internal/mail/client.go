package mail

import (
	"crypto/tls"
	"fmt"
	"net/smtp"
	"strings"
	"time"

	"github.com/afairon/nautilus/config"
	"github.com/knadh/smtppool"
)

const (
	IdleTimeout     = time.Second * 10
	PoolWaitTimeout = time.Second * 5
	MaxConns        = 10
)

type SMTPClient struct {
	host     string
	port     int
	username string
	password string
	auth     string
	tls      bool
	pool     *smtppool.Pool
}

func NewMailer(host string, port int, username, password, authProto string, enableTLS bool) (Mailer, error) {
	var auth smtp.Auth

	switch authProto {
	case "cram":
		auth = smtp.CRAMMD5Auth(username, password)
	case "plain":
		auth = smtp.PlainAuth("", username, password, host)
	case "login":
		auth = &smtppool.LoginAuth{Username: username, Password: password}
	case "", "none":
	default:
		return nil, fmt.Errorf("unknown SMTP auth type '%s'", authProto)
	}

	opt := smtppool.Opt{
		Host:            host,
		Port:            port,
		Auth:            auth,
		IdleTimeout:     IdleTimeout,
		PoolWaitTimeout: PoolWaitTimeout,
		MaxConns:        MaxConns,
		TLSConfig: &tls.Config{
			InsecureSkipVerify: true,
		},
	}

	if enableTLS {
		opt.SSL = true
	}

	pool, err := smtppool.New(opt)
	if err != nil {
		return nil, err
	}

	c := &SMTPClient{
		host:     host,
		port:     port,
		username: username,
		password: password,
		auth:     authProto,
		tls:      enableTLS,
		pool:     pool,
	}

	return c, nil
}

func NewMailerFromConfig(conf *config.SMTP) (Mailer, error) {
	return NewMailer(
		conf.Host,
		conf.Port,
		conf.Username,
		conf.Password,
		conf.AuthProto,
		conf.TLS,
	)
}

func (c *SMTPClient) Send(mail Mail) error {
	var attachments []smtppool.Attachment
	if len(mail.Attachments) > 0 {
		attachments = make([]smtppool.Attachment, 0, len(mail.Attachments))
		for _, f := range mail.Attachments {
			at := smtppool.Attachment{
				Filename: f.Filename,
				Header:   f.Header,
				Content:  make([]byte, 0, len(f.Content)),
			}
			copy(at.Content, f.Content)
			attachments = append(attachments, at)
		}
	}

	em := smtppool.Email{
		From:        mail.From,
		To:          mail.To,
		Subject:     mail.Subject,
		Attachments: attachments,
	}

	if strings.TrimSpace(em.From) == "" {
		em.From = c.username
	}

	if len(mail.Headers) > 0 {
		em.Headers = mail.Headers
	}

	switch mail.ContentType {
	case HTML:
		em.HTML = mail.Body
	default:
		em.Text = mail.Body
	}

	return c.pool.Send(em)
}

func (c *SMTPClient) Close() error {
	c.pool.Close()
	return nil
}
