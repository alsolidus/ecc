class AddRightToUser < ActiveRecord::Migration
  def change
    add_column :users, :right_id, :integer
  end
end
