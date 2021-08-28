defmodule KapiApi.Repo do
  use Ecto.Repo,
    otp_app: :kapi_api,
    adapter: Ecto.Adapters.Postgres
end
