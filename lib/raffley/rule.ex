defmodule Raffley.Rule do
  def all do
    [
      %{
        id: 1,
        text: "Participants must have a high tolerance for puns and dad jokes. 🙃"
      },
      %{
        id: 2,
        text: "Winner must do a victory dance when claiming their prize. 🕺"
      },
      %{
        id: 3,
        text: "Have fun! 🎟️"
      }
    ]
  end

  # def find(id) do
  #   Enum.find(all(), fn rule -> rule.id == String.to_integer(id) end)
  # end

  def find(id) when is_integer(id) do
    Enum.find(all(), fn r -> r.id == id end)
  end

  def find(id) when is_binary(id) do
    id |> String.to_integer() |> find()
  end
end
