defmodule Openlibrary.PageController do
  use Openlibrary.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
