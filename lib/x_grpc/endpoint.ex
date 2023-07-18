defmodule XGrpc.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Logger.Server)
  run(XGrpc.User.Server)
end
