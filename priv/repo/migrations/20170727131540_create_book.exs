defmodule Openlibrary.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :isbn, :string
      add :title, :string
      add :author, :string
      add :photo_remote_url, :string

      timestamps()
    end

  end
end
