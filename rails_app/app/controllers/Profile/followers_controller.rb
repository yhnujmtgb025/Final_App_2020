module Profile
  class FollowersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @follower_user = @user.followers.all
    end
  end
end

