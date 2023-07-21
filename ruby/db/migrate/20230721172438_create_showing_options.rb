class CreateShowingOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :showing_options do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :showing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
