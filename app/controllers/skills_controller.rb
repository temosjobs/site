class SkillsController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"

  def index
    @skills = view_context.current_user.resume.skill
    @skill = Skill.new
  end

  def create
    skill = Skill.create(skill_param)
    skill.resume = view_context.current_user.resume
    skill.save
    redirect_to resume_skills_path(view_context.current_user.resume.id)
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    redirect_to resume_skills_path(view_context.current_user.resume.id)
  end

  private
    def skill_param
      params.require(:skill).permit(:name)
    end
end
