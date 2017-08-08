defmodule ReservationSpec do
    use ESpec
    alias Openlibrary.Reservation

    @valid_attrs %{book_id: 1, user_id: 1}
    @invalid_attrs %{}

    it "changeset with valid attributes" do
        changeset = Reservation.changeset(%Reservation{}, @valid_attrs)
        expect(changeset.valid?).to be_true()
    end

    it "changeset with invalid attributes" do
        changeset = Reservation.changeset(%Reservation{}, @invalid_attrs)
        expect(changeset.valid?).to be_false()
    end

end
