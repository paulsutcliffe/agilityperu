class CreateGuias < ActiveRecord::Migration
  def change
    create_table :guias do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :dupla_id

      t.timestamps
    end
  end
end
