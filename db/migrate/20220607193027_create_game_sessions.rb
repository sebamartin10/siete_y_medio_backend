class CreateGameSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :game_sessions do |t|
      t.integer :maxAmountOfPlayers
      

      t.timestamps
    end
  end
end
