class MessagesController < ApplicationController

  def create
    # byebug
    # What does .build() do?
    message = current_user.messages.build(body: params[:message][:body])
    if (message.save)
      ActionCable.server.broadcast "chatroom_channel", msg: message, user: current_user
    end
  end

end