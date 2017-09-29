defmodule Friends.Mixfile do
  use Mix.Project

  def project do
    [
      app: :friends,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Friends.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.0"},
      {:postgrex, "~> 0.13"},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false}
    ]
  end
end
