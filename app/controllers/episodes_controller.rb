class EpisodesController < ApplicationController
  def index
    episodes = Episode.all
    render json: episodes, status: 200
  end
end
