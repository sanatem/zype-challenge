class ZypeVideosController < ApplicationController

  def index
    @videos = ZypeVideo.all
  end

  def show
    @video = ZypeVideo.find(params[:id])
  end

end