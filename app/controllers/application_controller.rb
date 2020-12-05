class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  privete
  def current_user
    return unless session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    end
  end
end
