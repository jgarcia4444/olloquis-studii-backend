class Appointment < ApplicationRecord
    validates :duration, :time_start, :day_number, :month_number, :service_name, :first_name, :last_name, :email, :price, presence: true


    def self.find_by_month_and_day(month, day)
        appointments = Appointment.find_by(:month_number => month, :day_number => day)
        for i in 1...7
            next_day_appointments = Appointment.find_by(:month_number => month, :day_number => day + i)
            if next_day_appointments
                next_day_appointments.each {|app| appointments.push(app)}
            end
        end 
        appointments
    end
end
