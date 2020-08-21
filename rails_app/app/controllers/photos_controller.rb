class PhotosController < ApplicationController
before_action :authenticate_user!
def show
end

def index
  @images = Photo.where(status: '1')
  @images = Photo.order(:created_at => 'desc').page(params[:page]).per(4)
end

def new           
  @images = Photo.new
end           

def create 
  @images = current_user.photos.new(photo_params)
  if @images.save
      redirect_to photos_path
  else
    render 'new'
  end
end

def edit
  
end

private
def photo_params
  params.require(:photo).permit(:title,:description,:source,:status)
end
end
