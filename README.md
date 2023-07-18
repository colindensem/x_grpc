# XGrpc

**TODO: Add description**

## Installation

There are a couple of things that we require on our machine in order to properly develop and test our application.
We'll first need to install protoc so that .proto files can be compiled appropriately.
If you are on an OSX machine, you can run `brew install protobuf`, otherwise, see instructions specific to your platform.
Now, with protoc available on your machine, you'll also want to install grpcurl so that you can interact with the application.
Once again, if you are on an OSX machine, you can run `brew install grpcurl`, otherwise, check for instructions specific to your platform.

Lastly, you'll want to run mix escript.install hex protobuf and ensure that protoc-gen-elixir script is available on your path (if you use ASDF as your runtime version manager, this requires running asdf reshim elixir).

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `x_grpc` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:x_grpc, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/x_grpc>.
