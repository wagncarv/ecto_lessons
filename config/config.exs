import Config

config :ecto_lessons,
  ecto_repos: [Friends.Repo]

config :ecto_lessons, Friends.Repo,
  database: "ecto_lessons_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
