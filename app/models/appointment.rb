class Appointment < ApplicationRecord
    validates :duration, :time_start, :day_number, :month_number, :service_name, :first_name, :last_name, :email, :price, presence: true
end
