defmodule Tasker.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tasker.Accounts.User


  schema "users" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :name])
    |> validate_required([:email, :name])
  end
end
