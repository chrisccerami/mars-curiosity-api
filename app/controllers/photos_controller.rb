class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def index
    @photos = Photo.search(photo_params)
  end

  private

  def photo_params
    params.permit(:sol, :camera, :earth_date)
  end
end