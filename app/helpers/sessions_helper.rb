module SessionsHelper

  def current_user
    # User.find(session[:user_id]) if session[:user_id]
    # p @current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
