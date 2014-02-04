class CreateRequisitos < ActiveRecord::Migration
  def change
    create_table :requisitos do |t|
      t.string :pais
      t.text :contenido

      t.timestamps
    end
  end
end
