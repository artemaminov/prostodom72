class Article < ActiveRecord::Base
  attr_accessible :announce, :body, :id, :main_image, :name, :visible
end
