module Mutations
  class CreateNote < BaseMutation
    # arguments passed to the `resolve` method
    argument :title, String, required: true
    argument :option, String, required: true
    argument :number, Int, required: false
    argument :content, String, required: false

    # return type from the mutation
    type Types::NoteType

    def resolve(title: nil, option: nil, number: nil, content: nil)
      Note.create!(
        title: title,
        option: option,
        number: number,
        content: content
      )
    end
  end
end
