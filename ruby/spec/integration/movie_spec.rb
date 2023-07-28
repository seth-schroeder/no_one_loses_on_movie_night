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

  context "with graphql" do
    it "can be listed" do
      described_class.create!(name: "akira")
      result = NoOneLosesOnMovieNightSchema.execute(query)
      # I really don't love digging like this
      expect(result["data"]["movies"][0]["name"]).to eq("akira")
    end
  end
end
