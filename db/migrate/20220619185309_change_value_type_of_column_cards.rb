class ChangeValueTypeOfColumnCards < ActiveRecord::Migration[7.0]
  def change
    change_column :cards, :points, :float
    change_column :player_hands, :total_points, :float
    
  end
end
