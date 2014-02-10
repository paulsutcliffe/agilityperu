class CreateUbicaciones < ActiveRecord::Migration
  def up
    create_table :ubicaciones do |t|
      t.string :lugar
      t.text :direccion
      t.text :descripcion
      t.float :lat
      t.float :lng
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3

      t.timestamps
    end
    Ubicacion.create(lugar: 'Estadio Municipal de La Molina', direccion: 'Avenida La Molina, Las Lagunas, La Molina', descripcion: 'Capacidad: 5000 personas')
  end

  def down
    drop_table :ubicaciones
  end
end
