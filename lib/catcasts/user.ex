defmodule Catcasts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Catcasts.User
  alias Catcasts.Videos.Video


  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :provider, :string
    field :token, :string
    has_many :videos, Video

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :provider, :token])
    |> validate_required([:first_name, :last_name, :email, :provider, :token])
  end
end
