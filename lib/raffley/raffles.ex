defmodule Raffley.Raffles do
  alias Raffley.Raffles.Raffle

  def all do
    [
      %Raffle{
        id: 1,
        prize: "Autographed Jersey",
        ticket_price: 2,
        status: :open,
        image_path: "/images/jersey.jpg",
        description: "Step up, sports fans!"
      },
      %Raffle{
        id: 2,
        prize: "Coffee With A Yeti",
        ticket_price: 3,
        status: :upcoming,
        image_path: "/images/yeti-coffee.jpg",
        description: "A super-chill coffee date."
      },
      %Raffle{
        id: 3,
        prize: "Vintage Comic Book",
        ticket_price: 1,
        status: :closed,
        image_path: "/images/comic-book.jpg",
        description: "A rare collectible!"
      }
    ]
  end

  def get_raffle(id) when is_integer(id) do
    Enum.find(all(), fn r -> r.id == id end)
  end

  def get_raffle(id) when is_binary(id) do
    id |> String.to_integer() |> get_raffle()
  end

  def featured_raffles(raffle) do
    all() |> List.delete(raffle)
  end
end
