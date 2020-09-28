class SessionsController < ApplicationController
  def new
  end

  def create
    if(User.find_by(username: params[:username]))
      render html: User.find_by(username: params[:username]).username
    else
      render html: 'User not found.'
    end
  end
end