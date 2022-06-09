class CreatePlayerCards < ActiveRecord::Migration[7.0]
  def change
    create_table :player_cards do |t|
      t.boolean :is_card_visible
      t.references :player_hand, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
