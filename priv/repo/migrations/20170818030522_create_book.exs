defmodule Openlibrary.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :isbn, :string
      add :title, :string
      add :author, :string
      add :photo_remote_url, :string
      add :no_of_copies, :integer

      timestamps()
    end

    create unique_index(:books, :isbn)

  end
end
