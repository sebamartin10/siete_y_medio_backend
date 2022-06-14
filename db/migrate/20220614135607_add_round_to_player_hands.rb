class AddRoundToPlayerHands < ActiveRecord::Migration[7.0]
  def change
    add_reference :player_hands, :round, null: false, foreign_key: true
  end
end
