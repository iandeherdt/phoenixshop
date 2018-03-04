defmodule OrderapiWeb.Order do
  use Ecto.Schema
  import Ecto.Changeset
  alias OrderapiWeb.Order

  schema "orders" do
    field :number
    field :customer

    timestamps()
  end

  @doc false
  def changeset(%Order{} = order, attrs) do
    order
    |> cast(attrs, [:number, :customer])
    |> validate_required([:number, :customer])
  end
end
