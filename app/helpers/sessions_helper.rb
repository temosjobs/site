module SessionsHelper
  def user_signed_in?
    session[:user_id].present?    
  end

  def current_user
    if user_signed_in?
      User.find(session[:user_id])
    end	
  end

  def is_candidate?
    self.current_user.recipe == "candidate"
  end

  def is_enterprise?
    self.current_user.recipe == "enterprise"
  end

  def sign_out
  	session[:user_id] = nil
  end
end
