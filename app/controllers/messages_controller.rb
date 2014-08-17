class MessagesController < ApplicationController

  def create
    Message.create message_params
    redirect_to messages_path
  end

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  private

  def message_params
    params.require(:message).permit(
      :content, :name
    )
  end
end
