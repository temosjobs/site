class RegistrationsController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"
  
  def new
  end

  def create
    user = User.create(user_params)
    
    profile = Profile.new(profile_params)
    profile.user = user
    profile.save
    
    redirect_to new_session_path
  end

  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name)
    end

    def user_params
      params.require(:user).permit(:email, :password, :recipe)
    end
end
