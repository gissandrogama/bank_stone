# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bank_stone,
  ecto_repos: [BankStone.Repo]

# Configures the endpoint
config :bank_stone, BankStoneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8U4WP9j8MFD2JSaK1dAh4lDmoREjugeZdemtUTjnSKuHabSJK1qcAbcG1rnnIH7H",
  render_errors: [view: BankStoneWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BankStone.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"