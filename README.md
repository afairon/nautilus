# Nautilus

Nautilus is a self-hosted marketplace for diving trip agencies. It uses a PostgreSQL database as its data store.

## Build

### Dependencies

- Go 1.17
- Protocol Buffer compiler
- gogoproto (protoc-gen-gogoslick)
- dart protoc_plugin (optional)
- GNU make

#### Install gogoproto
```bash
go install github.com/gogo/protobuf/protoc-gen-gogoslick@latest
```

### Build

```bash
make            # Build everything
make server     # Build server
make run        # Build server and run server
make test       # Run all tests
make proto-go   # Generate protobuf files for golang
make proto-dart # Generate protobuf files for dart
make update     # Update dependencies and vendor
make clean      # Remove binaries and generated protobuf files for golang
make clean-all  # Remove every generated files
```

### Test
```bash
go test github.com/afairon/nautilus/repo # for testing tests in repository package
go test github.com/afairon/nautilus/handler # for testing tests in handler package
```