class ApplicationController < ActionController::Base
  include SessionsHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  # before_filter :require_login

  # def require_login
  #   redirect_to 'courses/index' unless current_user
  # end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
