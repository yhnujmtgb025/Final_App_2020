class AddConFirPassWordToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirpassword, :string
  end
end
