defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias Openlibrary.Repo
    end
  end

  def controller do
    quote do
      alias Openlibrary
      import Openlibrary.Router.Helpers

      @endpoint Openlibrary.Endpoint
    end
  end

  def view do
    quote do
      import Openlibrary.Router.Helpers
    end
  end

  def channel do
    quote do
      alias Openlibrary.Repo

      @endpoint Openlibrary.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
