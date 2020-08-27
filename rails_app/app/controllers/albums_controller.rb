class AlbumsController < ApplicationController
 
  def index
    @albums = Album.where(status: '1').order(:created_at => 'desc').page(params[:page]).per(4)
    @user = User.all
  end

  def show 
    @user = User.find(params[:id])
    @albums = @user.albums.order(:created_at => 'desc').page(params[:page]).per(8)
    @album = @user.count_albums
  end

  def edit
    @upalbum=Album.find(params[:id])  
  end
  
  def new
    @albums = Album.new 
  end


  def create 
    @photo = current_user.photos.create(photo_params)
    @albums = current_user.albums.create(album_params)
    @reship= @albums.ais.new(photo: @photo)
    if @reship.save 
        redirect_to albums_path
    else
      render 'index'
    end
  end

  def update
    # @upalbum=Album.find(params[:id])
    # if @upalbum.update_attributes(album_params)
    #   flash[:notice] = "The album has just updated"
    #   redirect_to albums_path
    # else
    #   render "edit"
    # end
  end
  
  private

  def album_params
    params.require(:album).permit(:title,:description,:source,:status)
  end
  def photo_params
    params.require(:album).permit(:title,:description,:source,:status)
  end

end
