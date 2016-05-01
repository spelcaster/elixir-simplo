defmodule Simplo.Repo do
  use Ecto.Repo,
    otp_app: :simplo,
    adapter: Sqlite.Ecto
end
