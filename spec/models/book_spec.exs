defmodule BookSpec do
    use ESpec
    alias Openlibrary.Book

    @valid_attrs %{serial_no: "1-1", state: "available", title_id: 1}
    @invalid_attrs %{}

    it "changeset with valid attributes" do
        changeset = Book.changeset(%Book{}, @valid_attrs)
        expect(changeset.valid?).to be_true()
    end

    it "changeset with invalid attributes" do
        changeset = Book.changeset(%Book{}, @invalid_attrs)
        expect(changeset.valid?).to be_false()
    end

end
