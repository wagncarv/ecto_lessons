defmodule Friends.Repo.Migrations.CreateCharacters do
  use Ecto.Migration

  def change do
    create table(:character) do
      add :name, :string
      add :movie_id, references(:movie)
    end
  end
end
