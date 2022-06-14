class AddPositioninboardToPlayerSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :player_sessions, :position_in_board, :integer
    
  end
end
