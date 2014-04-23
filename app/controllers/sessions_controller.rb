class SessionsController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"
  
  def new
  end

  def create
    user = User.authenticate(params[:user][:email], params[:user][:password])
    if user
      session[:user_id] = user.id
      redirect_to me_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to me_path    
  end
end
