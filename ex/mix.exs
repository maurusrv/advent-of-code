defmodule Ex.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      preferred_cli_env: [espec: :test],
      aliases: aliases()
    ]
  end

  defp aliases do
    [
      espec: ["espec --trace"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}

      {:espec, "~> 1.9.1", only: :test},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:benchee, "~> 1.0", only: [:test]}
    ]
  end
end
