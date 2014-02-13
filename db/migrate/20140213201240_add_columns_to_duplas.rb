class AddColumnsToDuplas < ActiveRecord::Migration
  def change
    add_column :duplas, :especial_g1, :boolean
    add_column :duplas, :open_ac, :boolean
    add_column :duplas, :ac_oficial, :boolean
    remove_column :duplas, :prueba
  end
end
