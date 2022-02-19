defmodule Friends.Distributor do
  use Ecto.Schema
  alias Friends.Movie

  schema "distributor" do
    field(:name, :string)
    belongs_to(:movie, Movie)
  end
end
