defmodule Friends.Actor do
  use Ecto.Schema
  alias Friends.Movie

  schema "actor" do
    field(:name, :string)
    many_to_many(:movies, Movie, join_through: "movies_actors")
  end
end
