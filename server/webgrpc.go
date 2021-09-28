package server

import (
	"fmt"
	"log"
	"net/http"
	"time"

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
		if r.Method != "OPTIONS" && !wrappedGrpc.IsGrpcWebRequest(r) {
			log.Println("Web gRPC wrong call:", r.URL.Path)
			log.Println("Web gRPC remote:", r.RemoteAddr)
			w.WriteHeader(http.StatusNotFound)
			return
		}

		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE")
		w.Header().Set("Access-Control-Expose-Headers", "grpc-status, grpc-message")
		w.Header().Set("Access-Control-Allow-Headers", "Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, XMLHttpRequest, x-user-agent, x-grpc-web, grpc-status, grpc-message")
		if r.Method == "OPTIONS" {
			w.Header().Set("Access-Control-Max-Age", "86400")
			return
		}

		log.Println("Web gRPC call:", r.URL.Path)
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
