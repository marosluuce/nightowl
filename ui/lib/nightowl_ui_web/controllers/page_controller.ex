defmodule NightowlUiWeb.PageController do
  use NightowlUiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
