module ApplicationHelper

  def title
    base_title = "Tutorial de Ruby on Rail"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
end
