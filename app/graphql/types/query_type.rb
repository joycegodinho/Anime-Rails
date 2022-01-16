module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # `all_notes` is automatically camelcased to `allNotes`
    field :all_notes, [NoteType], null: false
    # this method is invoked, when `all_link` fields is being resolved
    def all_notes
      Note.where(user_id: context[:current_user]).order(created_at: :desc)
    end

  end
end
