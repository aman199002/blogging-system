class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def authenticate
    requested_path = request.path
	  session[:user_requested_path] = nil
	  if current_user.blank? && !requested_path.include?("login")
	    session[:user_requested_path] = requested_path
	    redirect_to login_path	
	  end
  end	

  def current_user    
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end	

end
