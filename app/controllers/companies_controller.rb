class CompaniesController < ApplicationController
	# Load temporary frontend framework semantic.css
  layout "temp"

  def edit
  	@company = Company.find(params[:id])
  end

  def new
  	@company = Company.new
  end

  def update
  	company = Company.find(params[:id])
    company.update_attributes(company_params)
    redirect_to edit_user_company_path(view_context.current_user.id,view_context.current_user.company.id)
  end

  def create
  	company = Company.create(company_params)
    company.user = view_context.current_user
    company.save
    redirect_to edit_user_company_path(view_context.current_user.id,view_context.current_user.company.id)
  end

  private
  	def company_params
  		params.require(:company).permit(:name,:section_work,:city,:state,:neighborhood, :description, :logo)
  	end
end
