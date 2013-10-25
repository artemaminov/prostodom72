class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.primary_key :id
      t.string :name
      t.text :intro
      t.integer :main_image
      t.boolean :visible

      t.timestamps
    end
  end
end
