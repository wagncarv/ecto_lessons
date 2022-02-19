defmodule Friends.Repo.Migrations.CreateMoviesActors do
  use Ecto.Migration

  def change do
    create table(:movies_actors) do
      add :movie_id, references(:movie)
      add :actor_id, references(:actor)
    end

    create unique_index(:movies_actors, [:movie_id, :actor_id])
  end
end
