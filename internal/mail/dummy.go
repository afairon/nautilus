package mail

type Dummy struct{}

func NewDummy() Mailer {
	return &Dummy{}
}

func (d *Dummy) Send(mail Mail) error {
	return nil
}

func (d *Dummy) Close() error {
	return nil
}
