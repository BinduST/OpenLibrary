defmodule BookSpec do
    use ESpec
    alias Openlibrary.Book

    @valid_attrs %{author: "some author", isbn: "some isbn", photo_remote_url: "some url", title: "some title"}
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
