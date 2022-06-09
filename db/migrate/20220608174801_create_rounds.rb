class CreateRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :rounds do |t|
      t.string :bank
      t.boolean :is_current_round
      t.string :previous_turn
      t.string :current_turn
      t.string :next_turn
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
