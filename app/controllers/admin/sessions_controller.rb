class Admin::SessionsController < AdminController
  skip_before_filter :authenticate_user, :only => [:new, :create, :destroy]
  
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to admin_root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to admin_log_in_url, :notice => "Logged out!"
  end
end
