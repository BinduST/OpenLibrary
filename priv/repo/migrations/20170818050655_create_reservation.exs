defmodule Openlibrary.Repo.Migrations.CreateReservation do
  use Ecto.Migration

  def change do
    create table(:reservations) do
        add :book_id, references(:books)
        add :user_id, references(:users)

        timestamps()
    end
  end
end
