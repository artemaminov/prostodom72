class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.primary_key :id
      t.string :name
      t.text :intro
      t.integer :square
      t.integer :floors
      t.integer :price
			t.string :deadline, limit: 80
      t.boolean :is_visible

      t.timestamps
    end
  end
end
