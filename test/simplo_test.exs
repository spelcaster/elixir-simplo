ExUnit.start

defmodule SimploTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Simplo.init([])

  test "returns a user" do
    # start the repository
    Simplo.Repo.start_link

    conn = conn(:get, "/users/1")

    conn = Simplo.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert String.match?(conn.resp_body, ~r/Fluffums/)
  end
end
