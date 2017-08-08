defmodule Openlibrary.Book do
  use Openlibrary.Web, :model

  schema "books" do
    field :serial_no, :string
    field :state, :string

    belongs_to :title, Openlibrary.Title
    has_many :reservations, Openlibrary.Reservation
    timestamps()

  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:serial_no, :state, :title_id])
    |> validate_required([:serial_no, :state, :title_id])
  end
end
