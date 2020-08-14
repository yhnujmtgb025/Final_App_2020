class PhotoController < ApplicationController
  def index
    @photos = Photo.find(params[:id])
  end
  def create
  end
  def delete
  end
end
