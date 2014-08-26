class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.where(username: params[:username]).first
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back, #{user.username}"
      redirect_to dashboard_path
    else
      flash[:error] = 'There was something wrong with your credentials'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You are logged out'
    redirect_to root_path
  end

end
