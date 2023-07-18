defmodule XGrpc.User.Server do
  use GRPC.Server, service: XGrpc.User.Service

  def create(request, _stream) do
    %{
      first_name: request.first_name,
      last_name: request.last_name,
      age: request.age
    }
    |> UserDB.add_user()
    |> XGrpc.UserReply.new()
  end

  def get(request, _stream) do
    UserDB.get_user(request.id)
    |> user_reply()
  end

  defp user_reply(nil), do: raise(GRPC.RPCError, status: :not_found)
  defp user_reply(user), do: XGrpc.UserReply.new(user)
end
