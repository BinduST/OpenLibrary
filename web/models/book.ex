defmodule Openlibrary.Book do
  use Openlibrary.Web, :model

  schema "books" do
    field :isbn, :string
    field :title, :string
    field :author, :string
    field :photo_remote_url, :string

    has_many(:book_copies, Openlibrary.BookCopy)
    has_many(:reservations, Openlibrary.Reservation)

    timestamps()
  end

  @required_fields [:isbn, :title, :author, :photo_remote_url]

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_fields)
    |> validate_required(@required_fields)
  end
end
