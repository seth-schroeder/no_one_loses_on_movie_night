# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    description "Base query type"

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :movies, [MovieType], "List all movies"

    def movies
      Movie.all
    end
  end
end
