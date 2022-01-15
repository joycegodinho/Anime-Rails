module Mutations
  class DeleteNote < BaseMutation
    # arguments passed to the `resolve` method
    argument :id, String, required: true

    # return type from the mutation
    type Types::NoteType

    def resolve(id: nil)
      delete = Note.find_by(
        id: id
      )
      delete.destroy
    end
  end
end
