class TrainingsController < ApplicationController 


    def create
        puts params    
        new_signup = Training.create(training_params)
        if new_signup.valid?
            render :json => {success: true}
        else 
            render :json => {success: false}
        end    
    end

    private 
        def training_params
            params.require(:book_training).permit(:first_name, :last_name, :email, :licensed, :training_name)
        end

end