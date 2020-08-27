module Profile
  class FollowingsController < ApplicationController
    def show
      @user = User.find(params[:id])
      @follower = @user.followings.all
    end
  end
end

