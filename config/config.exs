# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phelix,
  ecto_repos: [Phelix.Repo]

# Configures the endpoint
config :phelix, PhelixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1sTL36Smab661Fo7+kAuGnnGck0XvMjK7rsAErWuFsBnu9O2x2xjAdN3pY2MUD20",
  render_errors: [view: PhelixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phelix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
