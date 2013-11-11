ActiveAdmin.register Attachment do

	config.filters = false

	index do
		column :project, sortable: :attachable_id do |att|
			att.attachable.name
		end
		column :about, sortable: false
		column :position
		column :is_main_image, sortable: :is_main_image do |att|
			t att.is_main_image.to_s
		end
		column :is_blueprint, sortable: :is_blueprint do |att|
			t att.is_blueprint.to_s
		end
		column :attachment do |att|
			image_tag att.attachment.url :thumb
		end
		actions
	end

	form partial: 'form'

	member_action :delete_attachment, :method => :delete do
		@attachment = Attachment.find_by_id params[:id]
		respond_to do |format|
			if @attachment.destroy
				format.json { render json: 'Success', status: 'Ok' }
				format.js
			else
				format.json { render json: 'Error', status: 'Error' }
			end
		end
	end

end