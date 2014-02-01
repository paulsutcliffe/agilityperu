class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :imagen
      t.string :titulo

      t.timestamps
    end
  end
end
