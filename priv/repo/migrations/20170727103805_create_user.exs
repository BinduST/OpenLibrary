defmodule Openlibrary.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :employee_id, :integer
      add :first_name, :string
      add :last_name, :string

      timestamps()
    end

    create unique_index(:users, :employee_id)
  end
end
