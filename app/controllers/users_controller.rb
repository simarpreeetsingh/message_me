class UsersController < ApplicationController

  def new
  end

  def create
    # byebug
    user_p = params[:user]
    if (user_p[:password] != user_p[:confirm_password])
      flash[:warning] = "Passwords don't match. Try again!"
      redirect_to login_path
    else
      user = User.new(username: user_p[:username], password: user_p[:password])
      if (user.save)
        session[:user_id] = user.id
        flash[:success] = "Welcome to ChatRoom, #{user.username}!"
        redirect_to root_path
      else
        flash[:warning] = "Entered credentials don't meet the required standards. Please try again!"
        redirect_to login_path
      end
    end
  end

  def destroy
    
  end

end