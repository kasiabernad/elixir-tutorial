defmodule CatcastsWeb.PageController do
  use CatcastsWeb, :controller

  def index(conn, _params) do
    conn
    |> render "index.html"
  end
end
