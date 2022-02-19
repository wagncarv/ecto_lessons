defmodule Friends.Repo.Migrations.CreateDistributors do
  use Ecto.Migration

  def change do
    create table(:distributor) do
      add :name, :string
      add :movie_id, references(:movie)
    end

    create unique_index(:distributor, [:movie_id])
  end
end
