class CreatePlayerSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :player_sessions do |t|
      t.references :player, null: false, foreign_key: true
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
