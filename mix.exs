defmodule Arc.Mixfile do
  use Mix.Project

  @version "0.5.2"

  def project do
    [app: :arc,
     version: @version,
     elixir: "~> 1.0",
     deps: deps,

    # Hex
     description: description,
     package: package]
  end

  defp description do
    """
    Flexible file upload and attachment library for Elixir.
    """
  end

  defp package do
    [maintainers: ["Sean Stavropoulos"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/stavro/arc"},
     files: ~w(mix.exs README.md CHANGELOG.md lib)]
  end

  def application do
    [applications: [:logger, :inets, :ssl]]
  end

  defp deps do
    [
      {:ex_aws,    "~> 0.4.10", optional: true},
      {:poison,    "~> 1.4 or ~> 2.0",    optional: true},
      {:httpoison, "~> 0.7",    optional: true},
      {:mock,      "~> 0.1.1",  only: :test}
    ]
  end
end
