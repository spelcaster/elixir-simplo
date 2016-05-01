defmodule User do

  use Ecto.Model

  schema "users" do
    #id field is implicit
    field :first_name, :string
    field :last_name, :string

    timestamps
  end

end
