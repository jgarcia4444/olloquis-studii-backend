class TrainingsController < ApplicationController 


    def create
        puts params        
    end

    private 
        def training_params
            params.require(:book_training).permit(:first_name, :last_name, :email, :licensed, :training_name)
        end

end