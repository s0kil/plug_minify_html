defmodule PlugMinifyHtml.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_minify_html,
      version: "0.1.0",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description,
      package: package,
      deps: deps
    ]
  end

  defp description do
    """
    A Plug that minifies HTML response body
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Daniel Sokil"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/s0kil/plug_minify_html",
        "Docs" => "https://hexdocs.pm/plug_minify_html"
      }
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.9"},
      {:floki, "~> 0.26"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
