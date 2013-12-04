class AddIsFinishedToProduct < ActiveRecord::Migration
  def change
    add_column :products, :is_finished, :boolean, default: false
  end
end
