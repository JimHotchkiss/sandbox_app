class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  include SessionsHelper

  def logged_in?
    session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    #User.find(session[:user_id])
  end
end
