class FixColumnName < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :follows, :follower_id , :follower_user_id 
  end

  def self.down
    #rename_column :follows, :follower_user_id , :follower_id 
  end
end
