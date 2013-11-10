class Project < ActiveRecord::Base

	has_many :attachments, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :attachments, allow_destroy: true

	attr_accessible :floors, :intro, :name, :price, :square, :deadline, :is_visible, :attachments_attributes

	validates_presence_of :floors, :intro, :name, :price, :square, :deadline
	validates_numericality_of :floors, :price, :square
	validates_length_of :name, :deadline, maximum: 60

	def self.all
		self.find_all_by_is_visible true
	end

	def self.random
		self.all.sample
	end

	def self.mapped
		self.all.map { |project| [project.name, project.id] }
	end

	def background
		o = attachments.where(is_main_image: false, is_blueprint: false)
		o.sample.attachment.url :big
	end

	def main_image
		o = attachments.find_by_is_main_image true
		o.attachment.url :main_image
	end



	def set_styles
		{ main_image: '220x127#', thumb: '150x90#', big: '1366x768#' }
	end


end