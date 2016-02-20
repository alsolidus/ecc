class RenamePostTableAddTable < ActiveRecord::Migration
  def change
    rename_column :posts, :comment, :body  
  end
end
