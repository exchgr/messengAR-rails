class MessagesController < ApplicationController
  respond_to :json

  def index
    @messages = Message.all
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
end
