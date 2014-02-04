class CreateHoteles < ActiveRecord::Migration
  def change
    create_table :hoteles do |t|
      t.string :nombre
      t.text :descripcion
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
