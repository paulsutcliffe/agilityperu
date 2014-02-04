class CreateOrganizadores < ActiveRecord::Migration
  def change
    create_table :organizadores do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps
    end
  end
end
