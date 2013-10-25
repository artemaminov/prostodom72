class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.primary_key :id
      t.string :name
      t.string :email
      t.string :phone
      t.integer :project
      t.boolean :status

      t.timestamps
    end
  end
end
