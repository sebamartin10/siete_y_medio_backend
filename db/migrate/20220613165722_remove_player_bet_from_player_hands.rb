class RemovePlayerBetFromPlayerHands < ActiveRecord::Migration[7.0]
  def change
    remove_column :player_hands, :player_bet
  end
end
