class Appointment < ApplicationRecord
    validates :duration, :time_start, :day_number, :month_number, :service_name, :first_name, :last_name, :email, :price, presence: true


    def self.find_by_month_and_day(month, day)
        appointments = Appointment.find_by(:month_num => month, :day_num => day)
        (1...7).each do |i|
            next_day_appointments = Appointment.find_by(:month_num => month, :day_num => day + i)
            next_day_appointments.each {|app| appointments.push(app)}
        end 
    end
    return appointments
end
