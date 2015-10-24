class AddUserIdToPegs < ActiveRecord::Migration
  def change
    add_column :pegs, :user_id, :integer
    add_index :pegs, :user_id
  end
end
