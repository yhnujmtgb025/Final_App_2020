class AddCountAlbumsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :count_albums, :integer,:default => 0
  end
end
