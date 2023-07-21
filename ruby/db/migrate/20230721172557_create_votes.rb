class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :person, null: false, foreign_key: true
      t.references :showing_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
