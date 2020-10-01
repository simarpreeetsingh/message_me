class ChatroomController < ApplicationController
  def index
    if (logged_in?)
      @messages = Message.all
    else
      flash[:warning] = "Kindly login to continue!"
      redirect_to login_path
    end
  end
end