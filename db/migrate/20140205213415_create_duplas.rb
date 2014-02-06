class CreateDuplas < ActiveRecord::Migration
  def change
    create_table :duplas do |t|
      t.string :nombre
      t.string :pais
      t.string :registro_genealogico
      t.string :raza
      t.string :color
      t.string :sexo
      t.string :categoria
      t.string :grado
      t.string :tatuaje_microchip
      t.string :prueba
      t.string :fotografia
      t.date :fecha_nacimiento
      t.integer :usuario_id

      t.timestamps
    end
  end
end
