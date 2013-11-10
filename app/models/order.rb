class Order < ActiveRecord::Base

	belongs_to :project

	attr_accessible :buyer_email, :buyer_name, :buyer_phone, :project_id, :status

	validates_presence_of :buyer_email, :buyer_name, :buyer_phone, :project
	validates_format_of :buyer_email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, on: :create
	validates_format_of :buyer_phone, with: /[\d\-\+]{6,12}/, on: :create
	#validates_associated :project


end