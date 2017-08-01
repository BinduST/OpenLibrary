defmodule Openlibrary.BookCopy do
  use Openlibrary.Web, :model

  schema "book_copies" do
    field :state, :string

    timestamps()

    belongs_to(:books, Openlibrary.Book)
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:state])
    |> validate_required([:state])
  end
end
