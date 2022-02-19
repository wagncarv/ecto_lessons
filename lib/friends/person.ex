defmodule EctoLessons.Person do
    use Ecto.Schema
    import Ecto.Changeset

    @fields [:name, :age]
    @required [:name]

    schema "people" do
        field :name, :string
        field :age, :integer, default: 0
    end

    def changeset(struct \\ %__MODULE__{}, params) do
        struct
        |> cast(params, @fields)
        |> validate_required(@required, message: "Não pode ser nulo")
        |> validate_length(:name, min: 2)
        |> validate_number(:age, greater_than_or_equal_to: 0)
        # |> set_name_when_anonymous()
    end

    # defp set_name_when_anonymous(%Changeset{} = changeset) do
    #     name = get_field(changeset, :name)

    #     if is_nil(name) do
    #         put_change(changeset, :name, "Anonymous")
    #     else
    #         changeset
    #     end
    # end
end
