# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :nightowl_ui, NightowlUiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/lQq6T3llLU8OSVCkBCIpJ2etBTO/Ehlp9EBNvw5I7zt3eLlj23a16u4pvgdYGpV",
  render_errors: [view: NightowlUiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NightowlUi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "HD5w3Ljp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
