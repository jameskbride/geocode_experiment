defmodule GeocodeExperiment.MixProject do
  use Mix.Project

  def project do
    [
      app: :geocode_experiment,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :google_maps]
    ]
  end

  defp escript do
    [main_module: GeocodeExperiment.CLI]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:google_maps, "~> 0.11"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
