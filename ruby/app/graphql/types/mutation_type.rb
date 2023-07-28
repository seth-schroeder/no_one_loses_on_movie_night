# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    description "Base mutation type"

    field :suggest_movie, Types::MovieType, mutation: Mutations::SuggestMovie, description: "TODO: stop duplication"
  end
end
