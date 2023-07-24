# frozen_string_literal: true

class Vote < ApplicationRecord
  belongs_to :person
  belongs_to :showing_option
end
