# frozen_string_literal: true

require "graphql/rake_task"

opts = {
  directory: Rails.root.join("graphql"),
  schema_name: "NoOneLosesOnMovieNightSchema"
}

GraphQL::RakeTask.new(opts)
