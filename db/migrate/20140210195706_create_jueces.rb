class CreateJueces < ActiveRecord::Migration
  def change
    create_table :jueces do |t|
      t.string :foto
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
