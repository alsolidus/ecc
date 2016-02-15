class PagesController < ApplicationController
    def index
        @basic_right = Right.find(1)
        @employee_right = Right.find(2)
        @VIP_right = Right.find(3)
    end    
    def about

        
    end
end
