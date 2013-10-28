class Attachment < ActiveRecord::Base

	MAX_FILESIZE = 3.megabytes

	belongs_to :attachable, polymorphic: true

	has_attached_file :attachment,
										path: ':rails_root/public:url',
										url: '/system/:attachable/:project_id/:basename.:extension',
										styles: lambda { |attachment| {
											thumbs: (attachment.instance.attachable_type.parameterize == 'project' ? '220x127#' : '200x100#')
										}}
	before_post_process :skip_for_not_images
	validates_attachment_presence :attachment
	validates_attachment_size :attachment, :less_than => MAX_FILESIZE

	attr_accessible :attachment, :attachable

	def self.main_image
		o = self.find_by_is_main_image true
		o.attachment.url
	end

	def self.background
		o = self.find_all_by_is_main_image false
		o.sample.attachment.url
	end


	protected

	def skip_for_not_images
		%w(image/jpg image/jpeg image/png).include?(asset_content_type)
	end


end