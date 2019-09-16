use Mix.Config

config :xql_verify, XqlVerify.Repo,
  log: :warn,
  pool: Ecto.Adapters.SQL.Sandbox
