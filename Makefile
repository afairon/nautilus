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
# Directory for Golang generated entities
ENTITY_GO_DIR = entity
# Directory for Dart generated Protocol Buffers
PB_DART_DIR = $(PROTO_DIR)/dart
# Directory for Golang dependencies
VENDOR_DIR = vendor

# File server binary
SERVER_BINARY = $(BUILD_DIR)/nautilus-server

# Google Protocol Buffers definitions
GOOGLE_PROTO := $(wildcard $(GOOGLE_PROTO_DIR)/google/protobuf/*.proto)
# Protocol Buffers definitions
PROTO := $(filter-out $(PROTO_DIR)/entity.proto,$(wildcard $(PROTO_DIR)/*.proto))
ENTITY := $(PROTO_DIR)/entity.proto
# Generated Protocol Buffers files for Golang
PB_GO := $(patsubst $(PROTO_DIR)/%.proto,$(PB_GO_DIR)/%.pb.go,$(PROTO))
ENTITY_GO := $(patsubst $(PROTO_DIR)/%.proto,$(ENTITY_GO_DIR)/%.pb.go,$(ENTITY))

# Generate every files
.PHONY: all
all: proto-go proto-dart server

# Generate server binary
.PHONY: server
server: cmd/main.go $(PB_GO) $(ENTITY_GO)
	$(GO) build -ldflags=$(LDFLAGS) -o $(SERVER_BINARY) $<

# Generating go code for each protobuf definition
$(PB_GO_DIR)/%.pb.go: $(PROTO_DIR)/%.proto $(VENDOR_DIR)
	$(PROTOC) --$(PROTOC_GO_GEN)_out=plugins=grpc:. \
		--proto_path=$(PROTO_DIR) \
		--proto_path=$(VENDOR_DIR) \
		--proto_path=$(GOOGLE_PROTO_DIR) \
		$<

# Generating go code for entities
$(ENTITY_GO_DIR)/%.pb.go: $(PROTO_DIR)/%.proto $(VENDOR_DIR)
	$(PROTOC) --$(PROTOC_GO_GEN)_out=Mcommon.proto=$(GO_PACKAGE)/$(PB_GO_DIR):. \
		--proto_path=$(PROTO_DIR) \
		--proto_path=$(VENDOR_DIR) \
		--proto_path=$(GOOGLE_PROTO_DIR) \
		$<

# Generate Protocol Buffers files for Golang
.PHONY: proto-go
proto-go: $(PB_GO) $(ENTITY_GO)

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
$(VENDOR_DIR): go.mod go.sum tools.go
	$(GO) mod vendor

# Run the generated executable
.PHONY: run
run: server
	@./$(SERVER_BINARY)

# Update dependencies
# Update go mod and vendor
.PHONY: update
update:
	$(GO) mod tidy
	$(GO) mod vendor

# Remove binaries and Protocol Buffers files generated for Golang
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR) $(PB_GO_DIR) $(ENTITY_GO_DIR)

# Remove every files that can be generated
.PHONY: clean-all
clean-all:
	rm -rf $(BUILD_DIR) \
		$(PB_GO_DIR) \
		$(ENTITY_GO_DIR) \
		$(PB_DART_DIR) \
		$(VENDOR_DIR)
