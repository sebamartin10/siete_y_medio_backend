class AddRoundIdToPlayerHands < ActiveRecord::Migration[7.0]
  def change
    add_column :player_hand, :round_id, :integer, foreign_key: true
  end
end
