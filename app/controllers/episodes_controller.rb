class EpisodesController < ApplicationController

  before_action :ensure_authenticated

  def index
    @episodes = Episode.all
  end

protected

  def ensure_authenticated
    token = request.headers['Authorization'].split('token=').last if request.headers['Authorization'].present?
    head :unauthorized unless User.exists?(token: token)
  end
end
