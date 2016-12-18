defmodule Membrane.Caps.Audio.Opus.Mixfile do
  use Mix.Project

  def project do
    [app: :membrane_caps_audio_opus,
     compilers: Mix.compilers,
     version: "0.0.1",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     description: "Membrane Multimedia Framework (Audio.Opus caps)",
     maintainers: ["Marcin Lewandowski"],
     licenses: ["LGPL"],
     name: "Membrane Caps: Audio.Opus",
     source_url: "https://bitbucket.org/radiokit/membrane-caus-audio-opus",
     preferred_cli_env: [espec: :test],
     deps: deps]
  end


  def application do
    [applications: [
      :membrane_core
    ], mod: {Membrane.Caps.Audio.Opus, []}]
  end


  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib",]


  defp deps do
    [
    ]
  end
end