class AppointmentsController < ApplicationController 

   def show 
        puts "params: #{params}"
        month_num = params[:month_num].to_i
        day_num = params[:day_num].to_i
        if month_num && day_num
            apps = Appointment.find_week_of_apps(month_num, day_num)
            puts "The apps should be here #{apps}"
            if apps
                appointment_times = [6, 8, 10, 12, 2, 4]
                ordered_apps = Appointment.setup_apps_for_frontend(apps)
                render :json => {
                    fetched: true,
                    time_listings_by_date: ordered_apps
                }
            else
                render :json => {
                    fetched: true,
                    time_listings_by_date: []
                }
            end
            
        else
            render :json => {
                message: "Error!"
            }
        end
   end

    def create
        new_appointment = Appointment.create(appointment_params)
        if new_appointment.valid?
            render :json => {
                has_error: false,
                appointment_info: new_appointment
            }
        else
            render :json => {
                has_error: true,
                errors: new_appointment.errors
            }
        end
    end

    def destroy
        appointment_for_deletion = Appointment.find(params[:appointment_info][:id])
        if appointment_for_deletion
            info_for_email_confirmation = appointment_for_deletion.except(:id, :duration, :price)
            appointment_for_deletion.destroy
            render :json => {
                deleted: true,
                email_info: info_for_email_confirmation
            }
        else
            render :json => {
                deleted: false,
                # More to come with sending an error email
            }
        end
    end

    private
    def appointment_params
        params.require(:appointment_info).permit(:duration, :time_start, :day_number, :month_number, :service_name, :first_name, :last_name, :email, :price)
    end

end