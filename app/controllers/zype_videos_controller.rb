class ZypeVideosController < ApplicationController

  rescue_from StandardError, with: :zype_api_error

  def index
    @videos = ZypeVideo.all
  end

  def show
    @video = ZypeVideo.find(params[:id])
  end

  private

  def zype_api_error
    render :error
  end

end
