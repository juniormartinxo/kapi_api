defmodule KapiApiWeb.PageController do
  use KapiApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
