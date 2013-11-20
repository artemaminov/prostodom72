module ApplicationHelper

	def nav_link(name, path, options = {})
		controller_name_from_path = Rails.application.routes.recognize_path(path)
		current = (controller_name_from_path[:controller] == controller.controller_name) ? true : nil
		@content = link_to(name, path, options)
		@content << content_tag(:div, '', class: 'pointer') if current
		content_tag :li, @content
	end

	def is_project_page?
		params[:controller] == 'projects' && params[:action] == 'show'
	end

	def is_projects_page?
		params[:controller] == 'projects' && params[:action] == 'index'
	end


end