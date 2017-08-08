defmodule TitleSpec do
    use ESpec
    alias Openlibrary.Title

    @valid_attrs %{author: "some author", isbn: "some isbn", photo_remote_url: "some url", title: "some title"}
    @invalid_attrs %{}

    it "changeset with valid attributes" do
        changeset = Title.changeset(%Title{}, @valid_attrs)
        expect(changeset.valid?).to be_true()
    end

    it "changeset with invalid attributes" do
        changeset = Title.changeset(%Title{}, @invalid_attrs)
        expect(changeset.valid?).to be_false()
    end

end
