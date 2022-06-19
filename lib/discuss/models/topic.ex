defmodule Discuss.Topic do
  use Discuss, :model

  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.User

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
