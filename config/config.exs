# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5z+MN7TWEtrQV3SPlVBySKIz/pz0XzxRUcrHANJ0z/00rvPHjb1RJNp1KuPlDbeO",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
	providers: [
		github: { Ueberauth.Strategy.Github, [] }
	]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
	client_id: "06cc367f6e1654af43a3",
	client_secret: "8ece33fef2f369e6c36944d7d7057277a932687f"