class CreateReglamentos < ActiveRecord::Migration
  def change
    create_table :reglamentos do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps
    end
  end
end
