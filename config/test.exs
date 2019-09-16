use Mix.Config

config :xql_verify, XqlVerify.Repo,
  log: false,
  pool: Ecto.Adapters.SQL.Sandbox
