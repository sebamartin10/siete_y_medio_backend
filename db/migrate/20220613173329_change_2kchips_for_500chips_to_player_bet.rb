class Change2kchipsFor500chipsToPlayerBet < ActiveRecord::Migration[7.0]
  def change
    rename_column :player_bets, :chips1k_amount, :chips500_amount
    rename_column :player_bets, :chips2k_amount, :chips1k_amount
  end
end
