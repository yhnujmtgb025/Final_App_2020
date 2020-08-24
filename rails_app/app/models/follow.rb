class Follow < ApplicationRecord
    # The user giving the follow
        belongs_to :follower, foreign_key: :follower_id, class_name: "User"
    # The user being followed
        belongs_to :followed_user, foreign_key: :followed_user_id, class_name: "User"

            
        validates :follower_id, presence: true
        validates :followed_user_id, presence: true
end
