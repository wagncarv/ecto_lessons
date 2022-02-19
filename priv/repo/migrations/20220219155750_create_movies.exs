defmodule Friends.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movie) do
      add :title, :string
      add :tagline, :string
    end
  end
end
