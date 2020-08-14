class AlbumsController < ApplicationController
  def index
    # @albums=Album.order(:created_at => 'desc').limit(6)
  end

  def edit
    @upalbum=Album.find(params[:id])  
  end

  def update
    @upalbum=Album.find(params[:id])
    if @upalbum.update_attributes(album_path)
      flash[:notice] = "The album has just updated"
      redirect_to albums_path
    else
      render "edit"
    end
  end
  
  private

  def album_path
    params.require(:album).permit(:title)
  end
  

end
