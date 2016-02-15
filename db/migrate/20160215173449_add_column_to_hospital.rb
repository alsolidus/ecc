class AddColumnToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :site_code, :string
  end
end
