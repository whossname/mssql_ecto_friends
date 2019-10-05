defmodule Friends.Repo do
  use Ecto.Repo, otp_app: :friends, adapter: MssqlEcto
end
