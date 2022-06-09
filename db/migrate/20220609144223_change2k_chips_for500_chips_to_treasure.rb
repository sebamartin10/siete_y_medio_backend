class Change2kChipsFor500ChipsToTreasure < ActiveRecord::Migration[7.0]
  def change
    rename_column :treasures, :chips1k_amount, :chips500_amount
    rename_column :treasures, :chips2k_amount, :chips1k_amount
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
