module Types
  class NoteType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :option, String, null: false
    field :number, Integer, null: true
    field :content, String, null: true
  end
end
