package logger

import (
	"net/http"
	"os"
	"path"
	"time"

	log "github.com/sirupsen/logrus"
	"gopkg.in/natefinch/lumberjack.v2"
)

// Setup defines the log format and output location.
func Setup(output string) {
	log.SetFormatter(&log.TextFormatter{
		TimestampFormat: "02-01-2006 15:04:05",
		FullTimestamp:   true,
	})

	if output == "" {
		log.SetOutput(os.Stdout)
	} else {
		log.SetOutput(&lumberjack.Logger{
			Filename: output,
			MaxSize:  8,
			MaxAge:   0,
		})
	}

	logLevel, err := log.ParseLevel(os.Getenv("LOG_LEVEL"))
	if err != nil {
		logLevel = log.InfoLevel
	}

	log.SetLevel(logLevel)
}

// NewGRPCEntry creates a new grpc log entry.
func NewGRPCEntry(fullMethod string, start time.Time) *log.Entry {
	service := path.Dir(fullMethod)[1:]
	method := path.Base(fullMethod)

	return log.WithFields(log.Fields{
		"grpc.service": service,
		"grpc.method":  method,
		"elapsed":      time.Since(start),
	})
}

// NewHTTPEntry creates a new http log entry.
func NewHTTPEntry(r *http.Request) *log.Entry {
	fields := log.Fields{
		"path": r.URL.Path,
	}

	if ip := r.Header.Get("X-Real-IP"); ip != "" {
		fields["ip"] = ip
	} else {
		fields["addr"] = r.RemoteAddr
	}

	return log.WithFields(fields)
}
