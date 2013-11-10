ActiveAdmin.register Order do

	index do
		column :status, sortable: :status do |o|
			t o.status
		end
		column :buyer_name
		column :buyer_email
		column :buyer_phone
		column :created_at
		column :project do |o|
			o.project.name
		end
		actions
	end

	form partial: 'form'

end