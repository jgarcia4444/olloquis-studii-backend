class Appointment < ApplicationRecord
    validates :duration, :time_start, :day_number, :month_number, :service_name, :first_name, :last_name, :email, :price, presence: true


    def self.find_week_of_apps(month, day)
        apps = []
        for i in 0...7
            Appointment.all.each do |app|
                if (app.month_number == month && app.day_number == day + i)
                    apps.push(app)
                end
            end
        end
        apps
    end

    def self.setup_apps_for_frontend(apps)
        puts "Hola we are here!!!"
        ordered_apps = {}
        apps.each do |app|
            if ordered_apps[app.day_number]
                ordered_apps[app.day_number].push(app.time_start)
            else
                ordered_apps[app.day_number] = [app.time_start]
            end
        end
        ordered_apps
    end

end
