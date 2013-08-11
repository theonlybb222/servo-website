class AdminController < ApplicationController
  # http_basic_authenticate_with :name => "admin", :password => "password"
  helper_method :current_user
  
  def authenticate_user
    unless current_user != nil
      redirect_to admin_log_in_url, :alert => "You must be logged in to view this page"
    end
  end
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
 
end