class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.primary_key :id
      t.string :buyer_name
      t.string :buyer_email
      t.string :buyer_phone
      t.integer :project_id
      t.string :status, limit: 1

      t.timestamps
    end
  end
end