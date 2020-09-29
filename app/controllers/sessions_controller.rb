class SessionsController < ApplicationController
  def new
    if (logged_in?)
      flash[:warning] = "Invalid action request. Kindly logout first."
      redirect_to root_path
    end
  end

  def create
    # byebug
    user = User.find_by(username: params[:session][:username])
    if (user && user.authenticate(params[:session][:password]))
      session[:user_id] = user.id
      flash[:success] = "Welcome to ChatRoom #{user.username}!"
      redirect_to root_path
    else
      flash.now[:warning] = "Invalid credentials! Try again."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully logged out!"
    redirect_to root_path
  end
end