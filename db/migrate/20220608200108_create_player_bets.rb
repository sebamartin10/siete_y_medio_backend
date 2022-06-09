class CreatePlayerBets < ActiveRecord::Migration[7.0]
  def change
    create_table :player_bets do |t|
      t.integer :chips100_amount
      t.integer :chips250_amount
      t.integer :chips1k_amount
      t.integer :chips2k_amount
      t.integer :chips5k_amount
      t.integer :total

      t.timestamps
    end
  end
end
