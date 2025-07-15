defmodule RaffleyWeb.RulesController do
  use RaffleyWeb, :controller

  alias Raffley.Rule

  def index(conn, _params) do
    emojis = ~w(🏆 🙌 🎉) |> Enum.random() |> String.duplicate(5)

    rules = Rule.list()

    render(conn, :index, emojis: emojis, rules: rules, layout: false)
  end
end
