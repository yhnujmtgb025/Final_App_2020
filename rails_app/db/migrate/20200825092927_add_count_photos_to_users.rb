class AddCountPhotosToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :count_photos, :integer, :default => 0
  end
end
