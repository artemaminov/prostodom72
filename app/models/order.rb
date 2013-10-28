class Order < ActiveRecord::Base
  attr_accessible :byer_email, :byer_name, :byer_phone, :project, :status
end
