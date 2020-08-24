class AlbumsController < ApplicationController
  before_action :authenticate_user!
  def index
    @albums = Album.where(status: '1').order(:created_at => 'desc').page(params[:page]).per(4)
  end

  def show 
    
  end

  def edit
    @upalbum=Album.find(params[:id])  
  end
  
  def new
    @albums = Album.new 
  end


  def create 
    # @albums = current_user.albums.create(album_params)
    # @photos = @albums.photos
    # if @photos.save
    #     redirect_to albums_path
    # else
    #   render 'index'
    # end
  end

  def update
    @upalbum=Album.find(params[:id])
    if @upalbum.update_attributes(album_params)
      flash[:notice] = "The album has just updated"
      redirect_to albums_path
    else
      render "edit"
    end
  end
  
  private

  def album_params
    params.require(:album).permit(:title,:description,:source,:status)
  end
  

end
