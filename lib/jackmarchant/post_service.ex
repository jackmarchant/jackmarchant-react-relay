defmodule Jackmarchant.PostService do
  alias Jackmarchant.Post

  def get_all_posts() do
    Jackmarchant.Repo.all(Post)
  end

  def get_post_by_slug(nil), do: nil
  def get_post_by_slug(slug) do
    Jackmarchant.Repo.get_by!(Post, slug: slug)
  end
end