class CreateAuspiciadores < ActiveRecord::Migration
  def change
    create_table :auspiciadores do |t|
      t.string :imagen
      t.string :nombre
      t.text :descripcion
      t.string :link

      t.timestamps
    end
  end
end
