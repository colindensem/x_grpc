defmodule XGrpcTest do
  use ExUnit.Case
  doctest XGrpc

  test "greets the world" do
    assert XGrpc.hello() == :world
  end
end
