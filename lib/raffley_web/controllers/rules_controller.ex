defmodule RaffleyWeb.RulesController do
  use RaffleyWeb, :controller

  alias Raffley.Rule

  def index(conn, _params) do
    emojis = ~w(🏆 🙌 🎉) |> Enum.random() |> String.duplicate(5)

    rules = Rule.all()

    render(conn, :index, emojis: emojis, rules: rules, layout: false)
  end

  def show(conn, %{"id" => id}) do
    rule = Rule.find(id)

    render(conn, :show, rule: rule)
  end
end
