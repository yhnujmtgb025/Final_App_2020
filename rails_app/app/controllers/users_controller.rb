class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def index
    @user = User.new
    # render 'Feed'
  end

  def new
    @user = User.new
  end

  
    def create
      @user = User.new(user_params)
      if @user.save
          # UserMailer.signup_confirmation(@user).deliver_now
          flash[:notice] = "Signed up Successfully"
          # SendEmailJob.set(wait: 1.seconds).perform_later @user
          redirect_to users_path
      else
        render "new"
      end
    
    end
 
 

  def user_params 
    params.require(:user).permit(:firstname,:lastname,:email,:password,:password_confirmation)
  end

end
