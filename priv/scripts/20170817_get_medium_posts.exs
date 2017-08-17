Jackmarchant.Application.start(nil, nil)

defmodule Jackmarchant.Scripts.GetMediumPosts do
  require Logger

  alias Jackmarchant.{
    Repo,
    Post
  }

  @feed_url Application.get_env(:jackmarchant, :medium_rss_url)

  def change(_opts) do
    Repo.delete_all(Post)

    Logger.info "Getting latest posts from Medium..."

    @feed_url
    |> HTTPoison.get
    |> process_response
    |> maybe_get_rss
    |> map_items
    |> save_posts

    Logger.info "Done."
  end

  defp save_posts([]), do: nil
  defp save_posts([post | rest]) do
    Repo.insert!(%Post{
      slug: post.slug,
      title: post.title,
      body: post.body
    })
    save_posts(rest)
  end

  defp maybe_get_rss(%{"rss" => rss}), do: rss["channel"]["item"]
  defp maybe_get_rss(status) do
    Logger.error "Something went wrong, status code: #{status}"
  end

  defp map_items([]), do: nil
  defp map_items(items) do
    items
    |> Enum.map(&extract_item/1)
  end

  defp extract_item(item) do
    %{
      title: item["title"],
      body: item["{http://purl.org/rss/1.0/modules/content/}encoded"],
      slug: get_slug(item["title"])
    }
  end

  defp get_slug(title) do
    title |> String.downcase |> String.replace(" ", "-") |> String.slice(0..30)
  end

  defp process_response({:ok, %HTTPoison.Response{body: body}}) do
    XmlToMap.naive_map(body)
  end

  defp process_response({:error, %HTTPoison.Response{status_code: status}}), do: status
end

Jackmarchant.Scripts.GetMediumPosts.change(System.argv)