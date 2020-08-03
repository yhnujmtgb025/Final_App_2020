class AddFollowedUserIdToFollow < ActiveRecord::Migration[6.0]
  def change
    add_column :follows, :followed_user_id, :integer
  end
end
