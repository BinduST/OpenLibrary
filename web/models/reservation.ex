defmodule Openlibrary.Reservation do
  use Openlibrary.Web, :model

  schema "reservations" do
    field :created_on, Ecto.Date
    field :updated_on, Ecto.Date

    timestamps()

    belongs_to(:books, Openlibrary.Book)
    belongs_to(:users, Openlibrary.User)
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:created_on, :updated_on])
    |> validate_required([:created_on, :updated_on])
  end
end
