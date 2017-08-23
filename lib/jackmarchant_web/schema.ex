defmodule JackmarchantWeb.Schema do
  use Absinthe.Schema
  import_types JackmarchantWeb.Schema.Types

  query do
    field :posts, list_of(:post) do
      resolve &JackmarchantWeb.PostResolver.all/2
    end

    field :post, :post do
      arg :slug, :string

      resolve &JackmarchantWeb.PostResolver.get/2
    end
  end
end