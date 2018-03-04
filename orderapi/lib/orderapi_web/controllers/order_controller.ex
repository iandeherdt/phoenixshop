defmodule OrderapiWeb.OrderController do
  use OrderapiWeb, :controller

  alias OrderapiWeb.Order

  def index(conn, _params) do
    orders = Orderapi.Repo.all(Order)
    render conn, "index.json", orders: orders
  end
end