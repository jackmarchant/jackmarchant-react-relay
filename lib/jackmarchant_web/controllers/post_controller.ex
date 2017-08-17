defmodule JackmarchantWeb.PostController do
  use JackmarchantWeb, :controller
  alias Jackmarchant.PostService

  def index(conn, _params) do
    render conn, "index.html", posts: PostService.get_all_posts()
  end

  def show(conn, %{"slug" => slug}) do
    render conn, "show.html", post: PostService.get_post_by_slug(slug)
  end
end
