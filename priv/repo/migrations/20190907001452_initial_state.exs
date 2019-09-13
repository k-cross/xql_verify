defmodule XqlVerify.Repo.Migrations.InitialState do
  use Ecto.Migration

  def change do
    create table(:foo) do
      add :bar, :mediumblob, null: false
    end
  end
end
