class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :source
      t.boolean :status, :default => true 
      t.timestamps
    end
  end
end
