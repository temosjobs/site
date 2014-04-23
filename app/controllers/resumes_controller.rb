class ResumesController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"

  def new
    @resume = Resume.new
  end

  def edit
    @resume = Resume.find(view_context.current_user.resume.id)
  end

  def create
    resume = Resume.create(resume_params)
    resume.user = view_context.current_user
    resume.save
    redirect_to edit_resume_path(view_context.current_user.resume.id), :notice => "Logged in!"
  end

  def update
    @resume = Resume.find(params[:id])
    @resume.update_attributes(resume_params)
    redirect_to edit_resume_path(params[:id]), :notice => "Alterado!"
  end

  private
    def resume_params
      params.require(:resume).permit(:title, :section_work, :description, :show_in_search, :is_public_link)
    end
end
