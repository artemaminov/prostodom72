class Article < ActiveRecord::Base
  attr_accessible :announce, :body, :id, :main_image, :name, :visible

	def self.random
		self.except(1).find_all_by_visible(true).sample
	end


end
