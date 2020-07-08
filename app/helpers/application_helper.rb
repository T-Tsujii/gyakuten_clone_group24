module ApplicationHelper

  def base_container
    if controller.controller_name == "movies"
      return "video-base-container"
    else 
      return "base-container"
    end
  end

end
