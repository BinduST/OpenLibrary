defmodule UserSpec do
    use ESpec
    alias Openlibrary.User

    @valid_attrs %{employee_id: 1, first_name: "FirstName", last_name: "LastName"}
    @invalid_attrs %{}

    it "changeset with valid attributes" do
        changeset = User.changeset(%User{}, @valid_attrs)
        expect(changeset.valid?).to be_true()
    end

    it "changeset with invalid attributes" do
        changeset = User.changeset(%User{}, @invalid_attrs)
        expect(changeset.valid?).to be_false()
    end

end
