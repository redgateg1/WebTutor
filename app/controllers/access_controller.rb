class AccessController < ApplicationController
  
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout, :renew]
  
  def index
	# display text and links
  end

  def login
	# login form
  end
  
  def renew
	# renew screen with link to payment screen
  end
  
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])			  
		active_user = 'y'
      end	  
    end
    if authorized_user
		if active_user == 'y'
			# mark user as logged in
			session[:user_id] = authorized_user.id
			session[:username] = authorized_user.username
			flash[:notice] = "You are now logged in."
			redirect_to(:action => 'index')
		else
			flash[:notice] = "Your subscription has expired."
			redirect_to(:action => 'renew')
		end
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
  end

  def logout
    # mark user as logged out
	session[:user_id] = nil
	session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end
  
end
