defmodule JackmarchantWeb.Router do
  use JackmarchantWeb, :router

  alias JackmarchantWeb.{
    PageController,
    Schema
  }

  pipeline :browser do
    plug :accepts, ["html", "json"]
    plug :fetch_session
    plug :fetch_flash
    # plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :browser

    get "/", PageController, :index
    get "/posts", PageController, :index
    get "/posts/:slug", PageController, :index

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: Schema
    forward "/graphql", Absinthe.Plug, schema: Schema
  end

end
