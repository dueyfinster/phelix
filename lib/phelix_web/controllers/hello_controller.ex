defmodule PhelixWeb.HelloController do
    use PhelixWeb, :controller

    def index(conn, _params) do
          render(conn, "index.html")
    end
end
