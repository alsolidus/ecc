class HospitalProfileBuild < ActiveRecord::Migration
  def change
     create_table :hospitals do |t|
      t.string :name
      t.string :state
      t.string :city
      t.string :director
      t.string :zip_code
      t.string :wan_a
      t.string :wan_b
      t.string :as_400
      t.string :facility
      t.string :att_circuit_id
      t.string :verizon_circuit_id
      t.string :oncall_number
      t.string :images
      
      t.text :comments
      
      t.timestamps
    end
  end
end