class CreateStreamings < ActiveRecord::Migration
  def change
    create_table :streamings do |t|
      t.string :codigo_embed

      t.timestamps
    end
  end
end
