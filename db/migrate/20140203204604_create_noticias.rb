class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :foto
      t.date :fecha
      t.text :contenido

      t.timestamps
    end
  end
end
