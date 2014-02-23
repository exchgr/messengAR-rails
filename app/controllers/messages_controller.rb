class MessagesController < ApplicationController
  respond_to :json
  before_filter :authenticate_user!

  def index
    @messages = []

    current_user.messages.all.each do |msg|
      @messages << {
        hint: msg.hint,
        url: "#{message_path(msg.id)}.json"
      }
    end

    respond_with @messages
  end

  def create
    @message = Message.new(params[:message])
    @message.user_id = User.find_by_email(params[:recipient]).id
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
