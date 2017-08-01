defmodule Openlibrary.Repo.Migrations.CreateReservation do
  use Ecto.Migration

  def change do
    create table(:reservations) do
      add :created_on, :date
      add :updated_on, :date

      timestamps()
    end

  end
end
