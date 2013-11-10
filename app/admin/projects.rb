ActiveAdmin.register Project do

	index do
		column :name
		column :square
		column :floors
		column :price
		column :deadline
		column :is_visible do |p|
			t p.is_visible.to_s
		end
		actions
	end

	form partial: 'form'

end