PHONY: generate-struct

generate-struct:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative pkg/auth/proto/auth.proto
server:
	go run cmd/main.go