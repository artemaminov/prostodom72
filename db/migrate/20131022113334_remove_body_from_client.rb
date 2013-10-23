class RemoveBodyFromClient < ActiveRecord::Migration
  def up
    remove_column :clients, :body
  end

  def down
    add_column :clients, :body, :string
  end
end
