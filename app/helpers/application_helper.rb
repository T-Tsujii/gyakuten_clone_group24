module ApplicationHelper

  def base_container
    if controller_name == "movies"
      "video-base-container"
    else
      "base-container"
    end
  end

end
