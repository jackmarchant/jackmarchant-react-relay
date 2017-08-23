defmodule JackmarchantWeb.PageController do
  use JackmarchantWeb, :controller

  def index(conn, _params) do
    props = %{}
    render conn, "index.html", props: props
  end
end
