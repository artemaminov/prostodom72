class ContactsController < ApplicationController

  def index
		@client = Client.new
		@current_project = Project.random
  end

  def create
	end


end