# Nautilus

Nautilus is a self-hosted marketplace for diving trip agencies. It uses a PostgreSQL database as its data store.

## Build

### Dependencies

- Go 1.17
- Protocol Buffer compiler
- gogoproto (protoc-gen-gogoslick)
- dart protoc_plugin (optional)
- GNU make

### Build

```bash
make            # Build everything
make server     # Build server
make run        # Build server and run server
make proto-go   # Generate protobuf files for golang
make proto-dart # Generate protobuf files for dart
make update     # Update dependencies and vendor
make clean      # Remove binaries and generated protobuf files for golang
make clean-all  # Remove every generated files
```
