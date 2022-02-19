defmodule Friends.Movie do
  use Ecto.Schema
  alias Friends.{Actor, Character, Distributor}

  schema "movie" do
    field(:title, :string)
    field(:tagline, :string)
    has_many(:characters, Character)
    has_one(:distributor, Distributor)
    many_to_many(:actor, Actor, join_through: "movies_actors")
  end
end
