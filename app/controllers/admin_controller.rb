class AdminController < ApplicationController
  # http_basic_authenticate_with :name => "admin", :password => "password"
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end