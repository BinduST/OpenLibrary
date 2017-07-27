defmodule Openlibrary.User do
  use Openlibrary.Web, :model

  schema "users" do
    field :employee_id, :integer
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:employee_id, :first_name, :last_name])
    |> validate_required([:employee_id, :first_name, :last_name])
  end
end
