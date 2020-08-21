class CreateAlbumPhoto < ActiveRecord::Migration[6.0]
  def change
    create_table :album_photos do |t|
      t.belongs_to :album
      t.belongs_to :photo
    end
  end
end
