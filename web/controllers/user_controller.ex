defmodule PhoenixApi.UserController do
  use PhoenixApi.Web, :controller

  def index(conn, _params) do
    users = Repo.all(PhoenixApi.User)
    json conn, users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(PhoenixApi.User, String.to_integer(id))
    json conn, user
  end
end
