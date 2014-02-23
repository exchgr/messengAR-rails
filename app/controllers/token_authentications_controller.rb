class TokenAuthenticationsController < ApplicationController
  respond_to :json

  def create
    @user = User.find params[:id]
    @user.reset_authentication_token!
    render json: @user.authentication_token
  end

  def destroy
    @user = User.find params[:id]
    @user.authentication_token = nil
    @user.save
    render json: @user.authentication_token
  end
end
