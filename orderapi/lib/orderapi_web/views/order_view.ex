defmodule OrderapiWeb.OrderView do
  use OrderapiWeb, :view

  def render("index.json", %{orders: orders}) do
    %{
      orders: Enum.map(orders, &order_json/1)
    }
  end

  def order_json(order) do
    %{
      number: order.number,
      customer: order.customer,
      inserted_at: order.inserted_at,
      updated_at: order.updated_at
    }
  end
end