class RelationshipsController < ApplicationController
    def create 
        @user = User.find(params[:followed_id])
        @users = current_user.follow(@user)
        redirect_to(:back)
    end

    def destroy
        @user = Relationship.find(params[:id]).followed
        @users = current_user.unfollow(@user)
        redirect_to(:back)
    end
end