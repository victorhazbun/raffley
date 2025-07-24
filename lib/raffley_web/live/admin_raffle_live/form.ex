defmodule RaffleyWeb.AdminRaffleLive.Form do
  use RaffleyWeb, :live_view

  alias Raffley.Admin

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:page_title, "New Raffle")
      |> assign(:form, to_form(%{}, as: "raffle"))

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <.header>
      {@page_title}
    </.header>
    <.simple_form for={@form} id="raffle-form" phx-submit="save">
      <.input field={@form[:prize]} label="Prize" />

      <.input field={@form[:description]} type="textarea" label="Description" />

      <.input field={@form[:ticket_price]} type="number" label="Ticket price" />

      <.input
        field={@form[:status]}
        type="select"
        label="Status"
        prompt="Choose a status"
        options={[:upcoming, :open, :closed]}
      />

      <.input field={@form[:image_path]} label="Image Path" />

      <:actions>
        <.button phx-disable-with="Saving...">Save Raffle</.button>
      </:actions>
    </.simple_form>

    <.back navigate={~p"/admin/raffles"}>
      Back
    </.back>
    """
  end

  def handle_event("save", %{"raffle" => raffle_params}, socket) do
    _raffle = Admin.create_raffle(raffle_params)

    socket = push_navigate(socket, to: ~p"/admin/raffles")

    {:noreply, socket}
  end
end
