defmodule CinderSpace.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Documentation site for the Cinder web application framework"

  def project do
    [
      app: :cinder_space,
      version: @version,
      description: @description,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      dialyzer: [
        plt_add_apps: [:mix, :ex_unit],
        list_unused_filters: true
      ],
      docs: [
        main: "readme",
        extras: ["README.md", "CHANGELOG.md"]
      ]
    ]
  end

  def package do
    [
      maintainers: ["James Harton <james@harton.nz>"],
      licenses: ["HL3-FULL"],
      links: %{
        "Source" => "https://harton.dev/cinder/cinder-space",
        "Site" => "https://cinder.space/",
        "GitHub" => "https://github.com/jimsynz/cinder-space",
        "Changelog" => "https://docs.harton.nz/james/cinder-space/changelog.html",
        "Sponsor" => "https://github.com/sponsors/jimsynz"
      }
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CinderSpace.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Test/CI related.
      {:credo, "~> 1.6", only: ~w[dev test]a, runtime: false},
      {:doctor, "~> 0.21", only: ~w[dev test]a, runtime: false},
      {:dialyxir, "~> 1.2", only: ~w[dev test]a, runtime: false},
      {:ex_check, "~> 0.16", only: ~w[dev test]a, runtime: false},
      {:ex_doc, ">= 0.28.0", only: ~w[dev test]a, runtime: false},
      {:git_ops, "~> 2.5", only: ~w[dev test]a, runtime: false},
      {:mix_audit, "~> 2.1", only: ~w[dev test]a, runtime: false},
      {:sobelow, "~> 0.13", only: ~w[dev test]a, runtime: false}
    ]
  end
end
