defmodule XGrpc.UserReply do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int32
  field :first_name, 2, type: :string, json_name: "firstName"
  field :last_name, 3, type: :string, json_name: "lastName"
  field :age, 4, type: :int32
end

defmodule XGrpc.CreateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :first_name, 1, type: :string, json_name: "firstName"
  field :last_name, 2, type: :string, json_name: "lastName"
  field :age, 3, type: :int32
end

defmodule XGrpc.GetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int32
end

defmodule XGrpc.User.Service do
  @moduledoc false

  use GRPC.Service, name: "x_grpc.User", protoc_gen_elixir_version: "0.12.0"

  rpc :Create, XGrpc.CreateRequest, XGrpc.UserReply

  rpc :Get, XGrpc.GetRequest, XGrpc.UserReply
end

defmodule XGrpc.User.Stub do
  @moduledoc false

  use GRPC.Stub, service: XGrpc.User.Service
end