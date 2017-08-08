defmodule Openlibrary.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :serial_no, :string
      add :state, :string
      add :title_id, references(:titles)

      timestamps()

    end
  end
end
