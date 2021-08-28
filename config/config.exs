# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kapi_api,
  ecto_repos: [KapiApi.Repo]

# Configures the endpoint
config :kapi_api, KapiApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+BKm11jhvHqZ0UGZDKIlKpbUI55uG7gj32ryLXStlxDDlDd9/ZYyt4wrM7z613+B",
  render_errors: [view: KapiApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: KapiApi.PubSub,
  live_view: [signing_salt: "jkTBLqEC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
