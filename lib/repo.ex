defmodule XqlVerify.Repo do
  use Ecto.Repo,
    otp_app: :xql_verify,
    adapter: Ecto.Adapters.MySQL
end
