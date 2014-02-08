class CreateCostos < ActiveRecord::Migration
  def change
    create_table :costos do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps
    end
  end
end
