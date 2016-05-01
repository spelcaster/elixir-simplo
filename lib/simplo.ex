defmodule Simplo do
  use Router

  @user_router_options UserRouter.init([])

  def route("GET", ["users" | path], conn) do
    UserRouter.call(conn, @user_router_options)
  end

  def route(_method, _path, conn) do
    # this route is called if no other routes match
    conn |> Plug.Conn.send_resp(404, "Could not find that page, sorry!")
  end
end
