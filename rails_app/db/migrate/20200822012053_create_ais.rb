class CreateAis < ActiveRecord::Migration[6.0]
  def change
    create_table :ais do |t|
      t.belongs_to :album
      t.belongs_to :photo
    end
  end
end
