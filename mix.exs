defmodule WebDriver.Mixfile do
  use Mix.Project

  def project do
    [ app: :webdriver,
      version: "0.9.0",
      description: "Webdriver protocol for driving web browsers.",
      source_url: "https://github.com/stuart/elixir-webdriver",
      homepage_url: "http://stuart.github.io/elixir-webdriver",
      package: package(),
      deps: deps(),
      docs: [
        readme: true,
        main: "README"
      ]
    ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { WebDriver, []},
      registered:   [ :webdriver ],
      applications: [ :httpotion, :jazz ],
      env: [ debug_browser: false ]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      {:ibrowse,   "~> 4.2"},
      {:httpotion, "~> 3.1.0"},
      {:jazz,      "~> 0.2.1"},
      {:mock,      github: "jjh42/mock", only: :test},
      {:earmark,   "~>0.1.10", only: :dev},
      {:ex_doc,    "~>0.6", only: :dev}
     ]
  end

  defp package do
    [
      contributors: ["Stuart Coyle", "Carl Woodward"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/stuart/elixir-webdriver",
               "Docs" => "http://stuart.github.io/elixir-webdriver/"}
    ]
  end
end
