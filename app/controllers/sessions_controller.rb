class SessionsController < ApplicationController
  before_action :ensure_signed_out, only: [:new, :create]
  before_action :ensure_signed_in, only: :destroy

  def new
  end

  def create
    if admin = Admin.find_by(username: params[:username]).try(:authenticate, params[:password])
      session[:admin_id] = admin.id
      redirect_to episodes_url
    else
      redirect_to new_session_url, notice: 'Username and Password not on file'
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to new_session_url
  end

private

  def ensure_signed_out
    redirect_to root_url if signed_in?
  end
end
