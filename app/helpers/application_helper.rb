module ApplicationHelper

  def nav_link(name, path, options = {})
    nav_path = Rails.application.routes.recognize_path(path)

    # OPTIMIZE
    if nav_path[:controller] == 'projects' && controller_name == 'projects'
      current = (nav_path[:action] == 'finished' && action_name == 'finished') || (nav_path[:action] == 'index' && (action_name == 'index' || action_name == 'show')) ? true : false
    else
      current = (nav_path[:controller] == controller_name) ? true : false
    end

    @content = link_to(name, path, options)
    @content << content_tag(:div, '', class: 'pointer') if current
    content_tag :li, @content
  end

  def is_project_page?
    # OPTIMIZE
    ((params[:controller] == 'projects') && (params[:action] == 'show')) || ((params[:action] == 'finished') && !params[:id].nil?)
  end

  def is_projects_page?
    # OPTIMIZE
    ((params[:controller] == 'projects') && (params[:action] == 'index')) || ((params[:action] == 'finished') && params[:id].nil?)
  end


end