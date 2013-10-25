class Gallery < ActiveRecord::Base
  attr_accessible :id, :images, :intro, :main_image, :name, :visible
end
