defmodule XqlVerify.DataCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias XqlVerify.Repo

      import Ecto
      import Ecto.{Query, Changeset}
      import XqlVerify.DataCase
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(XqlVerify.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(XqlVerify.Repo, {:shared, self()})
    end

    :ok
  end
end
