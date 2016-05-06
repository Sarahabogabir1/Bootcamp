class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :name
      t.text :address
      t.string :picture
      t.text :description

      t.timestamps null: false
    end
  end
end
