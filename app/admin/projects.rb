ActiveAdmin.register Project do

  index do
    column :is_visible do |p|
      t p.is_visible.to_s
    end
    column :name
    column :square
    column :floors
    column :price
    column :deadline
    column :is_finished do |p|
      t p.is_finished.to_s
    end
    column :sold do |p|
      t p.sold.to_s
    end
    actions
  end

  form partial: 'form'

end