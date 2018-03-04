defmodule OrderapiWeb.OrderControllerTest do
  use OrderapiWeb.ConnCase
  import OrderapiWeb.Factory

  test "#index returns a list of orders" do
    conn = build_conn()
    order = insert(:order)

    conn = get conn, order_path(conn, :index)

    assert json_response(conn, 200) == %{
      "orders" => [%{
        "number" => order.number,
        "customer" => order.customer,
        "inserted_at" => Elixir.NaiveDateTime.to_iso8601(order.inserted_at),
        "updated_at" => Elixir.NaiveDateTime.to_iso8601(order.updated_at)
      }]
    }
  end
end