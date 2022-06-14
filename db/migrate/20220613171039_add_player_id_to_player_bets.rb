class AddPlayerIdToPlayerBets < ActiveRecord::Migration[7.0]
  def change
    add_column :player_bets, :player_id, :integer, foreign_key: true
  end
end
