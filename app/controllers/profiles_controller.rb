class ProfilesController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"

  def edit
    if params[:id].to_i == view_context.current_user.profile.id
      @profile = Profile.find(params[:id])
    else
      view_context.sign_out
      redirect_to root_path
    end
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update_attributes(profile_params)
    redirect_to edit_profile_path(params[:id]), :notice => "Alterado!"
  end

  def destroy
  end

  private
    def profile_params
      params.require(:profile).permit(:first_name,:last_name,:gender,:birth,:website,:street,:number,:complement,:neighborhood,:city,:state)
    end
end