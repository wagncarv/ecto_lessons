defmodule Friends.Repo do
  use Ecto.Repo,
    otp_app: :ecto_lessons,
    adapter: Ecto.Adapters.Postgres
end
