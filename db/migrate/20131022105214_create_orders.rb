class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.primary_key :id
      t.string :byer_name
      t.string :byer_email
      t.string :byer_phone
      t.integer :project
      t.boolean :status

      t.timestamps
    end
  end
end
