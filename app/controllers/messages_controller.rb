class MessagesController < ApplicationController
  respond_to :json

  def index
    @messages = []

    Message.all.each do |msg|
      @messages << {
        hint: msg.hint,
        url: "#{message_path(msg.id)}.json"
      }
    end

    respond_with @messages
  end

  def create
    @message = Message.new(params[:message])
    @message.save
    respond_with @message
  end

  def show
    @message = Message.find(params[:id])
    respond_with @message
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_with @message
  end
end
