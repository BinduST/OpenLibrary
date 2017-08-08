defmodule Openlibrary.Reservation do
  use Openlibrary.Web, :model

  schema "reservations" do

    belongs_to :book, Openlibrary.Book
    belongs_to :user, Openlibrary.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:book_id, :user_id])
    |> validate_required([:book_id, :user_id])
  end
end
