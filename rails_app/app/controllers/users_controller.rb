class UsersController < ApplicationController
  def index
     @users = User.order(firstname: :DESC)
    # render 'Feed'
  end

  def show
    @a=Album.order(:created_at => 'desc')
    @b=Album.where(@a.count <= 6).limit(6)
  end
end
