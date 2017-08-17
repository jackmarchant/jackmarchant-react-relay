use Mix.Config

# General application configuration
config :jackmarchant,
  ecto_repos: [Jackmarchant.Repo]

# Configures the endpoint
config :jackmarchant, JackmarchantWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Hp0v7MMyJoZvFKVBbwgCU39oLqGrSW+CrTEICvi9UA3+YckQn44h1zNsse6B//1k",
  render_errors: [view: JackmarchantWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Jackmarchant.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :jackmarchant, :medium_rss_url, "https://medium.com/feed/@jackmarchant"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
