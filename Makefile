# Go compiler
GO ?= go
# Go compiler linker flags
LDFLAGS ?= "-s -w -X 'main.Commit=$$(git rev-parse --short HEAD)' -X 'main.Time=$$(date)'"
# Protocol Buffers compiler
PROTOC ?= protoc
# Protocol Buffers go compiler
PROTOC_GO_GEN ?= gogoslick
# Directory for google Protocol Buffers definitions
GOOGLE_PROTO_DIR ?= /usr/local/include

# Go package
GO_PACKAGE = github.com/afairon/nautilus

# Directory where binaries are generated
BUILD_DIR = build
# Directory for Protocol Buffers definitions
PROTO_DIR = proto
# Directory for Golang generated Protocol Buffers
PB_GO_DIR = pb
# Directory for Dart generated Protocol Buffers
PB_DART_DIR = $(PROTO_DIR)/dart
# Directory for Golang dependencies
VENDOR_DIR = vendor

# File server binary
SERVER_BINARY = $(BUILD_DIR)/nautilus-server

# Google Protocol Buffers definitions
GOOGLE_PROTO := $(GOOGLE_PROTO_DIR)/google/protobuf/empty.proto $(GOOGLE_PROTO_DIR)/google/protobuf/timestamp.proto
# Protocol Buffers definitions
PROTO := $(wildcard $(PROTO_DIR)/*.proto)
# Generated Protocol Buffers files for Golang
PB_GO := $(patsubst $(PROTO_DIR)/%.proto,$(PB_GO_DIR)/%.pb.go,$(PROTO))

# Postgres environment variable
PG_HOST ?= 127.0.0.1
PG_PORT ?= 5432
PG_USER ?= postgres

# JWT secret
JWT_SECRET ?= secret

# Generate every files
.PHONY: all
all: proto-go proto-dart server test

# Generate server binary
.PHONY: server
server: cmd/main.go $(PB_GO)
	$(GO) build -ldflags=$(LDFLAGS) -o $(SERVER_BINARY) $<

# Generating go code for each protobuf definition
$(PB_GO_DIR)/%.pb.go: $(PROTO_DIR)/%.proto $(VENDOR_DIR)
	$(PROTOC) --$(PROTOC_GO_GEN)_out=plugins=grpc:. \
		--proto_path=$(PROTO_DIR) \
		--proto_path=$(VENDOR_DIR) \
		--proto_path=$(GOOGLE_PROTO_DIR) \
		$<

# Generate Protocol Buffers files for Golang
.PHONY: proto-go
proto-go: $(PB_GO)

# Create dart folder and check for vendor folder
.PHONY: proto-dart
proto-dart: $(PB_DART_DIR) $(VENDOR_DIR) generate-dart

# Generate Protocol Buffers files for dart
.PHONY: generate-dart
generate-dart: $(PROTO) $(GOOGLE_PROTO)
	$(PROTOC) --dart_out=grpc:$(PB_DART_DIR) \
		--proto_path=$(PROTO_DIR) \
		--proto_path=$(VENDOR_DIR) \
		--proto_path=$(GOOGLE_PROTO_DIR) \
		$^

# Create dart folder for Protocol Buffers
$(PB_DART_DIR):
	@mkdir $@

# Create vendor folder with all related dependencies
$(VENDOR_DIR): go.mod go.sum
	$(GO) mod vendor

# Run the generated executable
.PHONY: run
run: server
	@./$(SERVER_BINARY) \
		-pg_host $(PG_HOST) \
		-pg_port $(PG_PORT) \
		-pg_user $(PG_USER) \
		-pg_password $(PG_PASSWORD) \
		-pg_dbname $(PG_DBNAME) \
		-secret $(JWT_SECRET)

# Update dependencies
# Update go mod and vendor
.PHONY: update
update:
	$(GO) mod tidy
	$(GO) mod vendor

# Run unit testing
.PHONY: test
test:
	$(GO) test -v -cover ./...

# Remove binaries and Protocol Buffers files generated for Golang
.PHONY: clean
clean:
	rm -f $(SERVER_BINARY) $(PB_GO)

# Remove every files that can be generated
.PHONY: clean-all
clean-all: clean
	rm -rf $(PB_DART_DIR) $(VENDOR_DIR)
