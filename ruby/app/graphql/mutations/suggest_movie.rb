# frozen_string_literal: true

module Mutations
  class SuggestMovie < Mutations::BaseMutation
    description "Suggests a movie -- will be available for voting"

    argument :name, String, description: "Name of the movie"

    field :errors, [String], null: false, description: "Errors"
    field :movie, Types::MovieType, description: "Suggested movie"

    def resolve(name:)
      # TODO: XSS protection
      {
        name: Movie.find_or_create_by(name: name).name,
        errors: []
      }
    end
  end
end
