# frozen_string_literal: true

class Seat < ApplicationRecord
  belongs_to :room
  belongs_to :person
end
