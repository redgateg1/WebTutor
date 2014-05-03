class AccessController < ApplicationController
  
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout, :renew, :confirm_registration, :register]
  
  def index
	# display text and links
	if session[:user_id]
   case session[:user_role]
      when "student"
        render :index
      when "owner"
        render :owner
      else
        render :error
    end
  end
  end

  def login
	# login form
	
  end
  
  def renew
	# renew screen with link to payment screen
  end
  
  def renew
  # owners home page
  end
  
  
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
        active_user = false
      end	  
    end
    if authorized_user
      
      if authorized_user.subscribtion_expire >= Date.current 
         active_user = true
      end
		  
		  if active_user
			# mark user as logged in
			session[:user_id] = authorized_user.id
			session[:username] = authorized_user.username
			session[:user_role] = authorized_user.user_role
			flash[:notice] = "You are now logged in."
			
			case authorized_user.user_role
			when "student"
			  redirect_to(:action => 'index')
			when "owner"
			  redirect_to(:action => 'owner')
			else
			  redirect_to(:action => 'error')
			end
			
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
	session[:user_role] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

end
