defmodule UserRouter do
  use Router

  # need to require before using its macros outside of function
  require EEx

  EEx.function_from_file :defp, :template_show_user, "templates/show_user.eex", [:user]

  def route("GET", ["users", user_id], conn) do
    case Simplo.Repo.get(User, user_id) do
      nil ->
        conn |> Plug.Conn.send_resp(404, "User with that ID not fount, sorry");
      user ->
        IO.puts user.first_name
        page_contents = template_show_user(user)

        conn |> Plug.Conn.put_resp_content_type("text/html")
          |> Plug.Conn.send_resp(200, page_contents)
    end
  end

  def route("POST", ["users"], conn) do
    # do some sort of database insertion here maybe
  end

  def route(_method, _path, conn) do
    # this route is called if no other routes match
    conn |> Plug.Conn.send_resp(404, "Could not find that user page, sorry!")
  end
end
