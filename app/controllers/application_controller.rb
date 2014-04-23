class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authorize

  helper :all

  def authorize

  	controllers_without_login = %w(home institutional registrations sessions)
  	if !controllers_without_login.include? controller_name
  		if !view_context.user_signed_in?
  			redirect_to new_session_path
  		end
  	end
  end
end
