class HospitalsController < ApplicationController
    def index
        @hospitals = Hospital.all
    end
		def new
			@hospital = Hospital.new
		end
   
   def show
        @hospital = Hospital.find( params[:id])
   end
    
    def edit
        @hospital = Hospital.find(params[:id])
        
    end
    
    def update 
        @hospital = Hospital.find( params[:id] )
      
        if @hospital.update_attributes(hospital_params)
            flash[:success] = "Profile Updated!"
            redirect_to hospital_path( params[:id] )
        else
            render action: :edit
        end
    end
    
    
    
    def create
        params.permit!

    @hospital = Hospital.new(params[:hospital])
    if @hospital.save
        redirect_to @hospital, alert: "Hospital created successfully."
    else
        redirect_to new_hospital_path, alert: "Error creating user."
    end
    end

    private
    def hospital_params
        params.require(:hospital).permit(  :name, :contact_email, :description, :facility, :state,  :city,
        :wan_a, :wan_b, :as_400, :images, :comments, :oncall_number, :att_circuit_id, :verizon_circuit_id, :phone_number, :address,
        :network_diagram, :facility_contact, :site_code, :zip_code,  )
    end
    
    def only_current_user
        @hospital = Hospital.find( params[:hospital_id]) 
        redirect_to(root_url) unless @hospital == current_hospital
    end    
end