class LanguagesController < ApplicationController
  # Load temporary frontend framework semantic.css
  layout "temp"

  def index
    @languages = view_context.current_user.resume.language
  end

  def edit
    @language = Language.find(params[:id])
  end

  def new
    @language = Language.new
  end

  def create
    language = Language.create(language_params)
    view_context.add_and_save_resume(language)
    redirect_to resume_languages_path(view_context.current_user.resume.id)
  end

  def update
    language = Language.find(params[:id])
    language.update_attributes(language_params)
    redirect_to resume_languages_path(view_context.current_user.resume.id)
  end

  def destroy
    language = Language.find(params[:id])
    language.destroy
    redirect_to resume_languages_path(view_context.current_user.resume.id)
  end

  private
    def language_params
      params.require(:language).permit(:name,:level)
    end
end
