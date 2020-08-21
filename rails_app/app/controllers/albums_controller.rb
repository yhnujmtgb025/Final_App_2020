class AlbumsController < ApplicationController
  before_action :authenticate_user!
  def index
    # @albums=Album.order(:created_at => 'desc').limit(15).page(params[:page])
    @albums = Album.where(status: '1')
    @albums = Album.order(:created_at => 'desc').page(params[:page]).per(8)
  end

  def edit
    @upalbum=Album.find(params[:id])  
  end
  
  def new
    @albums = Album.new 
  end

  def create 
    @images = current_user.albums.new(album_params)
    if @images.save
        redirect_to photos_path
    else
      render 'new'
    end
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
