class FixColumnName < ActiveRecord::Migration[6.0]
  def self.up
    add_column :users, :password, :string
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
