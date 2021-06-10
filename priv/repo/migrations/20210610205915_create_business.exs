defmodule BusiApi.Repo.Migrations.CreateBusiness do
  use Ecto.Migration

  def change do
    create table(:business) do
      add :name, :string
      add :description, :text
      add :tag, :string

      timestamps()
    end

  end
end
