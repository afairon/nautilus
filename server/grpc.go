package server

import (
	"fmt"
	"time"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	_ "github.com/lib/pq"
	"google.golang.org/grpc"

	"database/sql"
)

func CreateGRPCServer() *grpc.Server {
	opts := []grpc.ServerOption{
		grpc.MaxRecvMsgSize(8 * 1024 * 1024),
		grpc.MaxSendMsgSize(8 * 1024 * 1024),
		grpc.ConnectionTimeout(120 * time.Second),
	}

	server := grpc.NewServer(opts...)

	registerServices(server)
	NewDB()

	return server
}

func registerServices(server *grpc.Server) {
	pb.RegisterAccountServer(server, &service.AccountService{})
}

func NewDB() {
	const (
		host     = "139.59.101.136"
		port     = 5432
		user     = "boss"
		password = "IAmNewToLinux1@8259"
		dbname   = "test"
	)

	psqlInfo := fmt.Sprintf("host=%s port=%d user=%s "+
		"password=%s dbname=%s sslmode=require",
		host, port, user, password, dbname)

	db, err := sql.Open("postgres", psqlInfo)

	if err != nil {
		fmt.Println(err)
	}

	err = db.Ping()
	if err != nil {
		fmt.Println(err)
	}
}
