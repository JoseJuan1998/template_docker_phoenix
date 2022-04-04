defmodule Template.Repo do
  use Ecto.Repo,
    otp_app: :template,
    adapter: Ecto.Adapters.Postgres
end
