module ApplicationHelper

	def nav_link(name, path, options = {})
		current = current_page?(path) ? 'current' : nil
		@content = link_to(name, path, options)
		@content << content_tag(:div, '', class: 'pointer') if current
		content_tag :li, @content
	end


end