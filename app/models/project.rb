class Project < ActiveRecord::Base

	attr_accessible :floors, :intro, :name, :price, :square, :visible

	validates :floors, :intro, :name, :price, :square, presence: true

	has_many :attachments, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :attachments, :allow_destroy => true

	def self.all
		self.find_all_by_visible true
	end

	def self.random
		all_projects = self.find_all_by_visible true
		all_projects.sample
	end

	def self.mapped
		Project.all.map { |project| [project.name, project.id] }
	end


end