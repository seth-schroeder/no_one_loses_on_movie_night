# frozen_string_literal: true

module Types
  class MovieType < Types::BaseObject
    description "A movie"

    field :id, ID, null: false, description: "id"
    field :name, String, null: false, description: "Name of the movie"
  end
end
