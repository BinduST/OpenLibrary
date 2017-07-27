defmodule Openlibrary.User do
  use Openlibrary.Web, :model

  schema "users" do
    field :employee_id, :integer
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @required_fields [:employee_id, :first_name, :last_name]

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:employee_id)
  end
end
