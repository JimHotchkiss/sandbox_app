class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to user
    else
      flash[:alert] = "Please check login info, and try again"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end


end
