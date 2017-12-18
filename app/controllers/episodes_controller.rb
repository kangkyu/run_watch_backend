class EpisodesController < ApplicationController

  before_action :ensure_authenticated

  rescue_from ActiveRecord::RecordNotFound do |e|
    render json: { message: e.message }, status: :not_found
  end

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update params.require(:episode).permit!
      head :no_content
    else
      render json: { message: @episode.errors.messages }, status: :unprocessable_entity
    end
  end

protected

  def ensure_authenticated
    token = request.headers['Authorization'].split('token=').last if request.headers['Authorization'].present?
    head :unauthorized unless User.exists?(token: token)
  end
end
