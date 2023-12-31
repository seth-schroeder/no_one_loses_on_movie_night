# frozen_string_literal: true

class CreateShowings < ActiveRecord::Migration[7.0]
  def change
    create_table :showings do |t|
      t.datetime :shown_at
      t.references :room, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
