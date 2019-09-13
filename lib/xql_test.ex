defmodule XqlVerify do
  use Application

  def start(_type, _args) do
    children = [
      XqlVerify.Repo
    ]

    opts = [strategy: :one_for_one, name: XqlVerify.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(_changed, _new, _removed) do
    :ok
  end

  defmodule Foo do
    use Ecto.Schema

    schema "foo" do
      field(:bar, :map)
    end
  end
end
