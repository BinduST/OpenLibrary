# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :openlibrary,
  ecto_repos: [Openlibrary.Repo]

# Configures the endpoint
config :openlibrary, Openlibrary.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HU34FDJj2if05aaj7nAyi/hlXSdth+PGIayG7QGIo7SKyC1XFcpM3/hOSY2VGRec",
  render_errors: [view: Openlibrary.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Openlibrary.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
