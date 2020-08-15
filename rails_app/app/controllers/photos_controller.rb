class PhotosController < ApplicationController
  def index
    @images = Photo.all
  end
  def new
    @images = Photo.all
  end

end
