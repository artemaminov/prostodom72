module ApplicationHelper

  def nav_link(name, path, options = {})
    nav_path = Rails.application.routes.recognize_path(path)
    current = (nav_path[:controller] == controller_name) ? true : false
    @content = link_to(name, path, options)
    @content << content_tag(:div, '', class: 'pointer') if current
    content_tag :li, @content
  end

  def is_project_page?
    (params[:controller] == 'projects' || params[:controller] == 'finished') && params[:action] == 'show'
  end

  def is_projects_page?
    (params[:controller] == 'projects' || params[:controller] == 'finished') && params[:action] == 'index'
  end


end