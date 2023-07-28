# frozen_string_literal: true

require "rails_helper"

RSpec.describe Movie do
  let!(:query) do
    <<~GRAPHQL
      query {
        movies {
          name
        }
      }
    GRAPHQL
  end
  let!(:mutation) do
    <<~GRAPHQL
      mutation($name: String!) {
        suggestMovie(name: $name) {
          name
        }
      }
    GRAPHQL
  end

  context "with graphql" do
    it "can be listed" do
      described_class.create!(name: "akira")
      result = NoOneLosesOnMovieNightSchema.execute(query)
      # I really don't love digging like this
      expect(result["data"]["movies"][0]["name"]).to eq("akira")
    end

    it "can be created" do
      result = NoOneLosesOnMovieNightSchema.execute(mutation, variables: { "name" => "Grave of the Fireflies" })
      expect(result["data"]["suggestMovie"]["name"]).to eq("Grave of the Fireflies")
      expect(described_class.count).to eq(1)
    end
  end
end
