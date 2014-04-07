class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def confirm_logged_in
    print 'DEBUG running ApplicationController/confirm_logged_in'
	unless session[:user_id]
		flash[:notice] = "Please log in."
		redirect_to(:action => 'login')
		return false #halts the before_action
	else
		return true
	end
  end
  
end
