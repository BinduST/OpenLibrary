defmodule Openlibrary.Repo.Migrations.CreateTitle do
  use Ecto.Migration

  def change do
    create table(:titles) do
      add :isbn, :string
      add :title, :string
      add :author, :string
      add :photo_remote_url, :string

      timestamps()
    end

    create index(:titles, :isbn)

  end
end
