module Mutations
  class UpdateNote < BaseMutation
    # arguments passed to the `resolve` method
    argument :title, String, required: false
    argument :option, String, required: false
    argument :number, Int, required: false
    argument :content, String, required: false
    argument :id, String, required: false

    # return type from the mutation
    type Types::NoteType

    def resolve(title: nil, option: nil, number: nil, content: nil, id: nil)
      note = Note.find_by(id: id)
      note.update(
        title: title,
        option: option,
        number: number,
        content: content
      )
      return note

    end
  end
end
