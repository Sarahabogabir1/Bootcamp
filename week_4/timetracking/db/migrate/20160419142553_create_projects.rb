class CreateProjects < ActiveRecord::Migration
  def change 
    create_table :projects do |t| #describes the structure of the data base
      t.string :name

      t.timestamps null: false
    end
  end
end
