# frozen_string_literal: true

class ShowingOption < ApplicationRecord
  belongs_to :movie
  belongs_to :showing
end
