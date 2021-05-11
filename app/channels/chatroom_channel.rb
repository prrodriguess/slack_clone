class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom #"chatroom_1"
    # stream_for "general" every channels messages
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
end
