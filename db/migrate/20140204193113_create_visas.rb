class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :titulo
      t.string :imagen

      t.timestamps
    end
  end
end
