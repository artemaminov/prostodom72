class Project < ActiveRecord::Base

	has_many :attachments, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :attachments, :allow_destroy => true

	attr_accessible :floors, :intro, :main_image, :name, :price, :square, :visible

	validates_presence_of :floors, :intro, :main_image, :name, :price, :square

	def self.all
		self.find_all_by_visible true
	end

	def self.random
		all_projects = self.find_all_by_visible true
		all_projects.sample
	end


end