class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.primary_key :id
      t.string :name
      t.text :intro
      t.float :square
      t.integer :floors
      t.integer :price
      t.boolean :visible

      t.timestamps
    end
  end
end
