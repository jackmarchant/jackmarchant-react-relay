defmodule JackmarchantWeb.PageController do
  use JackmarchantWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
