module Authenticable
  extend ActiveSupport::Concern

  def ensure_signed_in
    redirect_to new_session_path, notice: 'Unauthorized.' unless signed_in?
  end

  def signed_in?
    current_admin_id.present?
  end

  def current_admin_id
    session[:admin_id]
  end

  def current_admin
    Admin.find current_admin_id
  end

  included do
    helper_method :current_admin
    helper_method :signed_in?
  end
end
