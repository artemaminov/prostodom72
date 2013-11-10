Paperclip.interpolates('attachable_type') do |attachment, style|
	attachment.instance.attachable_type
end

Paperclip.interpolates('project_id') do |attachment, style|
	attachment.instance.attachable.id
end