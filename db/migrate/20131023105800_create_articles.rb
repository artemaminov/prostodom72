class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.primary_key :id
      t.string :name
      t.text :announce
      t.text :body
      t.integer :main_image
      t.boolean :visible

      t.timestamps
    end
  end
end
