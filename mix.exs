defmodule Friends.Mixfile do
  use Mix.Project

  def project do
    [
      app: :friends,
      version: "0.2.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      applications: [:logger, :ecto, :mssqlex, :mssql_ecto],
      mod: {Friends, []}
    ]
  end

  defp aliases do
    [
      test: ["test"],
      setup: ["ecto.create", "ecto.migrate", "seed"]
    ]
  end

  defp deps do
    [
      {:mssql_ecto, git: "https://github.com/whossname/mssql_ecto.git", branch: "ecto_3.0"}
    ]
  end
end
