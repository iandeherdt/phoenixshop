defmodule Orderapi.Repo.Migrations.CreateOrder do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :number, :string
      add :customer, :string

      timestamps()
    end
  end
end
