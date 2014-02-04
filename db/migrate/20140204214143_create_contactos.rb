class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :titulo
      t.text :contenido
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
