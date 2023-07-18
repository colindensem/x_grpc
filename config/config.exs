import Config

config :logger, :console, format: "[$level] $time -> $message\n"

config :grpc, start_server: true
