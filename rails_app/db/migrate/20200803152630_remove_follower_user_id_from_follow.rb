class RemoveFollowerUserIdFromFollow < ActiveRecord::Migration[6.0]
  def change
    remove_column :follows, :follow_user_id, :integer
  end
end
