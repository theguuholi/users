# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :users,
  ecto_repos: [Users.Repo]

# Configures the endpoint
config :users, UsersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ga1oFUBQjZjd8l2dJyghy4XnGAiSic28Z0BOTMYCtLM0X1CCFM1YybBJukTCsdUo",
  render_errors: [view: UsersWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Users.PubSub,
  live_view: [signing_salt: "RPEIpAyP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
