class PicturesController < ApplicationController
  def index
  	@abc
  	@abc.to_json
  end

  def list
  	@page = params[:page].to_i
  	@size = params[:size].to_i
  	@pictures = Picture.offset(@page * @size).limit(@size)
  	render json: @pictures
  end
end
