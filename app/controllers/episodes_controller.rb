class EpisodesController < ApplicationController
  before_action :ensure_authenticated

  def index
    episodes = Episode.all
    render json: episodes, status: 200
  end

  def ensure_authenticated
    # ActionController::HttpAuthentication::Token.token_and_options(request)
    token = request.headers['Authorization'].split('token=').last if request.headers['Authorization'].present?
    head :unauthorized unless User.exists?(token: token)
  end
end
