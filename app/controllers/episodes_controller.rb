class EpisodesController < ApplicationController
  before_action :ensure_signed_in

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to episodes_url, notice: 'Episode was successfully created.'
    else
      render :new
    end
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update(episode_params)
      redirect_to episodes_url, notice: 'Episode was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    redirect_to episodes_url, notice: 'Episode was successfully destroyed.'
  end

private
  def episode_params
    params.require(:episode).permit(:title, :description, :number)
  end
end
