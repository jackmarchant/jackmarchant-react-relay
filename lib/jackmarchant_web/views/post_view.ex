defmodule JackmarchantWeb.PostView do
  use JackmarchantWeb, :view

  import Phoenix.HTML

  def render_post_body(body) do
    body |> get_first_paragraph |> raw
  end

  defp get_first_paragraph(body) do
    String.split(body, "</p>") |> List.first
  end
end
