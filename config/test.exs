use Mix.Config

config :xql_verify, XqlVerify.Repo,
  pool: Ecto.Adapters.SQL.Sandbox
