class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # redirected to the homepage and flash error appears
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end
end
