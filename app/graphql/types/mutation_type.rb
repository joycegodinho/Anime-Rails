module Types
  class MutationType < Types::BaseObject

    field :create_note, mutation: Mutations::CreateNote
    field :delete_note, mutation: Mutations::DeleteNote
    field :update_note, mutation: Mutations::UpdateNote

  end
end
