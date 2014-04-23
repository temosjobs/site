class ExperiencesController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"

  def index
    @experiences = view_context.current_user.resume.experience
  end

  def new
    @experience = Experience.new
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def create
    experience = Experience.create(experience_params)
    experience.resume = view_context.current_user.resume
    experience.save
    redirect_to resume_experiences_path(view_context.current_user.resume.id)
  end

  def update
    experience = Experience.find(params[:id])
    experience.update_attributes(experience_params)
    redirect_to resume_experiences_path(view_context.current_user.resume.id)
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    redirect_to resume_experiences_path(view_context.current_user.resume.id)
  end

  private
    def experience_params
      params.require(:experience).permit(:company_name,:title,:location,:start_date,:end_date,:is_current_job,:description)
    end
end

