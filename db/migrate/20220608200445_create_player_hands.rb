class CreatePlayerHands < ActiveRecord::Migration[7.0]
  def change
    create_table :player_hands do |t|
      t.integer :total_points
      t.references :player, null: false, foreign_key: true
      t.references :player_bet, null: true, foreign_key: true

      t.timestamps
    end
  end
end
