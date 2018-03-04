# Create the factory in test/support/factory.ex
defmodule OrderapiWeb.Factory do
  use ExMachina.Ecto, repo: Orderapi.Repo

  def order_factory do
    %OrderapiWeb.Order{
      number: "1X12345",
      customer: "ITERATE BVBA, Ian De Herdt"
    }
  end
end