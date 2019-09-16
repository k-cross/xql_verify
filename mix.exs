defmodule XqlVerify.MixProject do
  use Mix.Project

  def project do
    [
      app: :xql_verify,
      version: "0.1.0",
      build_path: "./_build",
      config_path: "./config/config.exs",
      deps_path: "./deps",
      lockfile: "./mix.lock",
      elixir: "~> 1.7",
      elixirc_paths: paths(Mix.env()),
      compilers: Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {XqlVerify, []},
      extra_applications: [:logger, :myxql, :ecto_sql]
    ]
  end

  def paths(:test), do: paths(nil) ++ ["test/support"]
  def paths(_), do: ["lib"]

  defp deps do
    [
      {:ecto_sql, "~> 3.2"},
      {:jason, "~> 1.0"},
      {:myxql, github: "elixir-ecto/myxql", branch: "wm-cache", override: true},
      {:stream_data, "~> 0.4"}
    ]
  end
end
