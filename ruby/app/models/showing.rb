# frozen_string_literal: true

class Showing < ApplicationRecord
  belongs_to :room
  belongs_to :movie
end
