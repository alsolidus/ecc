class AddNewColumnToHospitals < ActiveRecord::Migration
  def change
     add_column :hospitals, :phone_number, :string
     add_column :hospitals, :address, :string
     add_column :hospitals, :network_diagram, :string
     add_column :hospitals, :facility_contact, :string
     
     
  end
end

