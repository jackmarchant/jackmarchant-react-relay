defmodule JackmarchantWeb.PostResolver do
  def all(_args, _info) do
    {:ok, Jackmarchant.Repo.all(Jackmarchant.Post)}
  end

  def get(%{slug: slug}, _info) do
    {:ok, Jackmarchant.Repo.get_by(Jackmarchant.Post, slug: slug)}
  end
end