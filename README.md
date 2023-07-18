# XGrpc

Exploration of gRPC in Elixir.

We'll be using: [Elixir GRPC](https://github.com/elixir-grpc/grpc) and [Protobuf-elixir](https://github.com/elixir-protobuf/protobuf)

## Installation

To properly develop and test the application, the following dependencies need to be installed on your machine:

1. **protoc**: This is required to compile .proto files. If you are using an OSX machine, you can install it by running `brew install protobuf`. For other platforms, please refer to the specific instructions.

2. **grpcurl**: This tool allows you to interact with the application. On OSX, you can install it by running `brew install grpcurl`. For other platforms, please check the platform-specific instructions.

3. **protoc-gen-elixir**: Run the command `mix escript.install hex protobuf` to install the protoc-gen-elixir script. Make sure it is available on your path. _If you use ASDF as your runtime version manager, you need to run `asdf reshim elixir` after installation._

Make sure all the dependencies are successfully installed before proceeding with the development and testing of the application.
## Usage

Run `mix grpc.server` to start the server.

The following should now work:

```
grpcurl -plaintext -proto x_grpc.proto -d '{"first_name": "Simon", "last_name": "Smith", "age": 40}' localhost:50051 x_grpc.User.Create
```

```
grpcurl -plaintext -proto x_grpc.proto -d '{"first_name": "Jane", "last_name": "Jones", "age": 45}' localhost:5001 x_grpc.User.Create
```

```
grpcurl -plaintext -proto x_grpc.proto -d '{"id": 1}' localhost:5001 x_grpc.User.Get
{
  "firstName": "Simon",
  "lastName": "Smith",
  "age": 40
}
```

```
grpcurl -plaintext -proto x_grpc.proto -d '{"id": 2}' localhost:5001 x_grpc.User.Get
{
  "firstName": "Jane",
  "lastName": "Jones",
  "age": 45
}

```

The following will produce an error:
```
grpcurl -plaintext -proto x_grpc.proto -d '{"id": 3}' localhost:5001 x_grpc.User.Get

ERROR:
  Code: NotFound
  Message: Some requested entity (e.g., file or directory) was not found
```
