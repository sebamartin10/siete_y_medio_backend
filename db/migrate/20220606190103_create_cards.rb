class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :symbol
      t.integer :number
      t.integer :points
      t.string :denomination

      t.timestamps
    end
  end
end
