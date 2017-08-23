defmodule Jackmarchant.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Jackmarchant.Post

  schema "posts" do
    field :body, :string
    field :slug, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body, :slug])
    |> validate_required([:title, :body, :slug])
  end
end
