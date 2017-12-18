class EpisodesController < ApplicationController

  before_action :ensure_authenticated

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    @episode.update params.require(:episode).permit!
  end

protected

  def ensure_authenticated
    token = request.headers['Authorization'].split('token=').last if request.headers['Authorization'].present?
    head :unauthorized unless User.exists?(token: token)
  end
end
