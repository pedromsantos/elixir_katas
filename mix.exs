defmodule ElixirKatas.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_katas,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_parameterized, "~> 1.3.7", only: :test}
    ]
  end
end
