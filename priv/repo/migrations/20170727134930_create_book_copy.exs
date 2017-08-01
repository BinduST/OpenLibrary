defmodule Openlibrary.Repo.Migrations.CreateBookCopy do
  use Ecto.Migration

  def change do
    create table(:book_copies) do
      add :state, :string

      timestamps()

    end

  end
end
