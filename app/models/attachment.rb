class Attachment < ActiveRecord::Base

	belongs_to :attachable, polymorphic: true

	attr_accessible :about, :position, :is_main_image, :is_blueprint, :attachment, :attachment_file_name, :attachable_attributes
	accepts_nested_attributes_for :attachable

	MAX_FILESIZE = 3.megabytes
	has_attached_file :attachment,
										styles: lambda { |a| a.instance.set_styles }
	before_post_process :skip_for_not_images
	validates_attachment_presence :attachment
	validates_attachment_size :attachment, :less_than => 3.megabytes

	def set_styles
		{ main_image: '220x127#', thumb: '150x90#', big: '1366x768#' }
	end


	private

	def skip_for_not_images
		%w(image/jpg image/jpeg image/png).include?(attachment_content_type)
	end


end