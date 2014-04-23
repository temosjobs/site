class EducationsController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"

  def index
    @educations = view_context.current_user.resume.education
  end

  def new
    @education = Education.new
  end

  def edit
    @education = Education.find(params[:id])
  end

  def create
    education = Education.create(education_params)
    view_context.add_and_save_resume(education)
    redirect_to resume_educations_path(view_context.current_user.resume.id)
  end

  def update
    education = Education.find(params[:id])
    education.update_attributes(education_params)
    redirect_to resume_educations_path(view_context.current_user.resume.id)
  end

  def destroy
    education = Education.find(params[:id])
    education.destroy
    redirect_to resume_educations_path(view_context.current_user.resume.id)
  end

  private
    def education_params
      params.require(:education).permit(:institution,:formation,:course,:start_year,:end_year,:description)
    end
end