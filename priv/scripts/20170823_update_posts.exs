Jackmarchant.Application.start(nil, nil)

defmodule Jackmarchant.Scripts.UpdatePost do
  require Logger

  alias Jackmarchant.{
    Repo,
    Post
  }

  def change(_opts) do
    # delete some replies, not actual articles
    delete_post("cheers-nathan.")
    delete_post("looking-for-a-new-job-(and-secu")
    delete_post("text/email-is-less-emotive,-and")

    # update to more friendly slugs
    update_slug("elixir-pattern-matching-in-a-nu", "elixir-pattern-matching-in-a-nutshell")
    update_slug("no-excuses,-write-unit-tests", "no-excuses-write-unit-tests")
    update_slug("react-–-one-year-later", "react-one-year-later")
    update_slug("learn-javascript-—-not-{framewo", "learn-javascript-not-a-framework")
  end

  defp delete_post(slug) do
    Repo.get_by(Post, slug: slug)
    |> Repo.delete!

    Logger.info "Deleted post."
  end

  def update_slug(from, to) do
    Repo.get_by(Post, slug: from)
    |> Post.changeset(%{slug: to})
    |> Repo.update!

    Logger.info "Updated post."
  end
end

Jackmarchant.Scripts.UpdatePost.change(System.argv)