class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # call set_layout when layout setting
  layout :set_layout
  
  # define set_layout
  def set_layout
    if params[:controller].match(%r{\A(fresh|twitter)/})
      Regexp.last_match[1]
    else
      'fresh'
    end
  end
  
end
