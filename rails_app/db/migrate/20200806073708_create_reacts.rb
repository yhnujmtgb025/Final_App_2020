class CreateReacts < ActiveRecord::Migration[6.0]
  def change
    create_table :reacts do |t|
      t.bigint  :reaction_id
      t.string  :reaction_type
      t.timestamps
    end
  end
end
