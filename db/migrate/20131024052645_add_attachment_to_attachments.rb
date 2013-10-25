class AddAttachmentToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :attachments, :attachment
  end
end
