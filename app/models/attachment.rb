class Attachment < ActiveRecord::Base

	MAX_FILESIZE = 3.megabytes

	belongs_to :attachable, polymorphic: true

	has_attached_file :attachment
	validates_attachment_presence :attachment
	validates_attachment_size :attachment, :less_than => MAX_FILESIZE

	attr_accessible :attachable


end