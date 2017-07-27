defmodule Openlibrary.UserTest do
  use Openlibrary.ModelCase

  alias Openlibrary.User

  @valid_attrs %{employee_id: 1, first_name: "FirstName", last_name: "LastName"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

end
