defmodule BookSpec do
    use ESpec
    alias Openlibrary.Book

    @valid_attrs %{isbn: "1-1", author: "Foo", title: "Bar", photo_remote_url: "http://foobar.png", no_of_copies: 2}
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
