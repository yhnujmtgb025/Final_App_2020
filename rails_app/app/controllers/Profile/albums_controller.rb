module Profile
  class AlbumsController < ApplicationController
    
    def show 
      @user = User.find(params[:id])
      @albums = @user.albums.order(:created_at => 'desc').page(params[:page]).per(8)
      @album = @user.count_albums
    end
  end
end

