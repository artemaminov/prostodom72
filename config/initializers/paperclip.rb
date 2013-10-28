Paperclip.interpolates('attachable') do |attachment, style|
	attachment.instance.attachable_type.parameterize
end

Paperclip.interpolates('project_id') do |attachment, style|
	attachment.instance.attachable.id
end