class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.primary_key :id
      t.string :about
      t.integer :position
			t.boolean :is_main_image, default: false
			t.boolean :is_blueprint, default: false
			t.integer :attachable_id
			t.string :attachable_type

      t.timestamps
    end
  end
end
