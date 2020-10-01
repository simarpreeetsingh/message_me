class MessagesController < ApplicationController

  def create
    # byebug
    message = current_user.messages.build(body: params[:message][:body])
    if (message.save)
      redirect_to root_path
    end
  end

end