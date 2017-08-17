defmodule JackmarchantWeb.PostController do
  use JackmarchantWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"slug" => slug}) do
    render conn, "show.html", post: get_post_by_slug(slug)
  end

  defp get_post_by_slug(nil), do: nil
  defp get_post_by_slug(slug) do
    Jackmarchant.Repo.get_by!(Jackmarchant.Post, slug: slug)
  end
end
