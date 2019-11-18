defmodule Phelix.Repo do
  use Ecto.Repo,
    otp_app: :phelix,
    adapter: Ecto.Adapters.Postgres
end
