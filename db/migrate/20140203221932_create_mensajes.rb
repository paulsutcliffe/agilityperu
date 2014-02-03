class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.text :mensaje

      t.timestamps
    end
  end
end
