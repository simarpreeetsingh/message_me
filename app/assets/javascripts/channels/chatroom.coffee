App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    # $('#message-container').append data.msg.body
    console.log data.user
    $('#message-container').append("<p class='mb-1'><a href='' class='text-decoration-none'>#{data.user.username}</a>: #{data.msg.body}</p>")
    $('#msg-input').val("")
    scroll_bottom()
