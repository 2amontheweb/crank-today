# :nodoc:
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(_resource)
    request.env['omniauth.origin'] || root_path
  end
end
