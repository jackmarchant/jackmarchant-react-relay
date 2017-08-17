defmodule JackmarchantWeb.PageController do
  use JackmarchantWeb, :controller
  alias Jackmarchant.PostService

  def index(conn, _params) do
    render conn, "index.html", posts: PostService.get_all_posts()
  end
end
