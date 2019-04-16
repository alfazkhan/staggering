    
class SessionsController < ApplicationController

    def new
  
    end
  
    def create
      user = User.find_by(username:params[:session][:username])
  
      if user && user.authenticate(params[:session][:password])
          session[:user_id]=user.id

          redirect_to rails_admin_path
      else
      flash.now[:danger]="Wrong Password"
      render 'new'
      end
  
    end
  
    def delete
      session[:user_id]=nil
      flash[:danger] = "Logged Out"
      redirect_to root_path
    end
  
  end
  