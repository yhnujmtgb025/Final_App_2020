module Profile
  class PhotosController < ApplicationController
   
    def show
      @user = User.find(params[:id])
      @photos = @user.photos.order(:created_at => 'desc').page(params[:page]).per(8)
    end
  end
end
