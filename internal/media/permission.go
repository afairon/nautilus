package media

// Permission defines the access policy for the object.
type Permission uint8

const (
	// Owner gets full control. Others have no access right.
	PRIVATE Permission = iota

	// Owner gets full control. Others have the right to read.
	PUBLIC_READ
)
