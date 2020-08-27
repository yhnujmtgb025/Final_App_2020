class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_many :albums, dependent: :destroy
    has_many :photos, dependent: :destroy

   

    # Will return an array of follows for the given user instance
        has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow", dependent: :destroy 
    # Will return an array of users who follow the user instance
        has_many :followers, through: :received_follows, source: :follower
    # returns an array of follows a user gave to someone else
        has_many :given_follows, foreign_key: :follower_id, class_name: "Follow", dependent: :destroy
    # returns an array of other users who the user has followed
        has_many :followings, through: :given_follows, source: :followed_user


    # follow another user
    def follow(other)
      given_follows.create(followed_user_id: other.id)
    end
    # unfollow a user
    def unfollow(other)
      given_follows.find_by(followed_user_id: other.id).destroy
    end

    # is following a user?
    def following?(other)
      followings.include?(other)
    end


    # validates :firstname, presence: true,  length: { maximum: 25 } 
    # validates :lastname, presence: true,  length: { maximum: 25 } 
    # validates :email, presence: true, uniqueness: true,  length: { maximum: 255 } 
    # validates :password,confirmation: true,  length: { maximum: 64 }
    # validates :password_confirmation,presence: true
    # def check_confirpassword_and_password
    #     errors.add(:confirpassword, "password inconrrect") if confirpassword != password
    # end
    after_create :send_admin_mail
  def send_admin_mail
    UserMailer.signup_confirmation(self).deliver_later
  end
end
