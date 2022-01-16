module Mutations
  class DeleteNote < BaseMutation
    # arguments passed to the `resolve` method
    argument :id, String, required: true

    # return type from the mutation
    type Types::NoteType

    def resolve(id: nil)
      note = Note.find_by( id: id )
      user = User.find_by( id: context[:current_user] )

      if user.id == note.user_id
        note.destroy
        return note
      end

    end
  end
end
