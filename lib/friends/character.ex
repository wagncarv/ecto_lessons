defmodule Friends.Character do
  use Ecto.Schema
  import Ecto.Changeset
  alias Friends.Movie

  @fields []

  schema "character" do
    field(:name, :string)
    belongs_to(:movie, Movie)
  end

  def change(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @fields)
  end
end
