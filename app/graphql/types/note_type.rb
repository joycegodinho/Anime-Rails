module Types
  class NoteType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :option, String, null: false
    field :number, Integer, null: true
    field :content, String, null: true

    # `posted_by` is automatically camelcased as `postedBy`
    # field can be nil, because we added users relationship later
    # "method" option remaps field to an attribute of Note model
    field :posted_by, UserType, null: true, method: :user
  end
end
