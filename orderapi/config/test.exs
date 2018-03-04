use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :orderapi, OrderapiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :orderapi, Orderapi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "developer",
  password: "developer",
  database: "orderapi_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
