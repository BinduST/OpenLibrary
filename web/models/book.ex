defmodule Openlibrary.Book do
  use Openlibrary.Web, :model

  schema "books" do
    field :isbn, :string
    field :title, :string
    field :author, :string
    field :photo_remote_url, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:isbn, :title, :author, :photo_remote_url])
    |> validate_required([:isbn, :title, :author, :photo_remote_url])
  end
end
