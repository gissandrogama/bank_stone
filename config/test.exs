use Mix.Config

# Configure your database
config :bank_stone, BankStone.Repo,
  username: System.get_env("TEST_DB_USERNAME"),
  password: System.get_env("TEST_DB_PASSWORD"),
  database: System.get_env("TEST_DB_DATABASE"),
  hostname: System.get_env("TEST_DB_HOSTNAME"),
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bank_stone, BankStoneWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
