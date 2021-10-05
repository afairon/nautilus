package server

import (
	"fmt"
	"net/http"
	"time"

	"github.com/afairon/nautilus/logger"
	"github.com/improbable-eng/grpc-web/go/grpcweb"
	"google.golang.org/grpc"
)

const (
	writeTimeout = 30 * time.Second
	readTimeout  = 30 * time.Second
	idleTimeout  = 1 * time.Minute
)

// CreateGRPCWebServer returns a http server.
func CreateGRPCWebServer(grpcServer *grpc.Server, host string, port int) *http.Server {
	wrappedGrpc := grpcweb.WrapServer(grpcServer)

	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		entry := logger.NewHTTPEntry(r)

		if r.Method != "OPTIONS" && !wrappedGrpc.IsGrpcWebRequest(r) {
			entry.Warn("Web gRPC wrong call")
			w.WriteHeader(http.StatusNotFound)
			return
		}

		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE")
		w.Header().Set("Access-Control-Expose-Headers", "grpc-status, grpc-message")
		w.Header().Set("Access-Control-Allow-Headers", "Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, XMLHttpRequest, authorization, x-user-agent, x-grpc-web, grpc-status, grpc-message")
		if r.Method == "OPTIONS" {
			w.Header().Set("Access-Control-Max-Age", "86400")
			return
		}

		entry.Info("Web gRPC call")
		wrappedGrpc.ServeHTTP(w, r)
	})

	return &http.Server{
		Addr:         fmt.Sprintf("%s:%d", host, port),
		Handler:      handler,
		ReadTimeout:  readTimeout,
		WriteTimeout: writeTimeout,
		IdleTimeout:  idleTimeout,
	}
}
