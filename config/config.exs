use Mix.Config

config :ex_unit, timeout: :infinity
config :xql_verify, XqlVerify.Repo,
  log: :debug,
  username: "foo",
  ownership_timeout: :infinity,
  password: "fake_pw",
  database: "foo",
  hostname: "localhost"

config :xql_verify, ecto_repos: [XqlVerify.Repo]

import_config "#{Mix.env()}.exs"
