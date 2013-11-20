class Client < ActiveRecord::Base
  attr_accessible :email, :id, :name, :phone, :project, :status
end
