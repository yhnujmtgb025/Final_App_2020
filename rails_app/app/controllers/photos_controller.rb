class PhotosController < ApplicationController
  def index 
    @images = Photo.where(status: '1').order(:created_at => 'desc').page(params[:page]).per(8)
    @user = User.all
  end


  def follower
    
  end



  def show
    @user = User.find(params[:id])
    @photos = @user.photos.order(:created_at => 'desc').page(params[:page]).per(8)
  end

  def new           
    @images = Photo.new
  end  

  def create 
    @images = current_user.photos.new(photo_params)
    if @images.save!
      redirect_to  photos_path
    else
      render 'new'
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:title,:description,:source,:status)
  end
end
