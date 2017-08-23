defmodule JackmarchantWeb.PostResolver do
  def all(_args, _info) do
    {:ok, Jackmarchant.Repo.all(Jackmarchant.Post)}
  end
end