package mail

import (
	"bytes"
	"embed"
	"html/template"
)

//go:embed templates/*
var templates embed.FS

func MailFromTemplate(fileName string, data interface{}) (*Mail, error) {
	t, err := template.ParseFS(templates, fileName)
	if err != nil {
		return nil, err
	}

	var b bytes.Buffer

	err = t.Execute(&b, data)
	if err != nil {
		return nil, err
	}

	mail := Mail{
		ContentType: HTML,
		Body:        b.Bytes(),
	}

	return &mail, nil
}
