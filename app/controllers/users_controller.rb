class UsersController < ApplicationController
  before_action :ensure_signed_in

  def regenerate_token
    @user = User.find(params[:user_id])
    @user.regenerate_token
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end
end
