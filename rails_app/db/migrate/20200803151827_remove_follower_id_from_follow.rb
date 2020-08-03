class RemoveFollowerIdFromFollow < ActiveRecord::Migration[6.0]
  def change
    remove_column :follows, :follow_id, :integer
  end
end
