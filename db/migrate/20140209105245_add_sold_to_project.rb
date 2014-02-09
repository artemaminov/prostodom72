class AddSoldToProject < ActiveRecord::Migration
  def change
    add_column :projects, :sold, :boolean, default: false
  end
end
