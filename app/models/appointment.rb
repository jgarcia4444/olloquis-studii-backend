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
        ordered_apps = []
        apps.each do |app|
            if ordered_apps.include?(app.day_number)
                same_day_app_index = ordered_apps.index(app.day_number)

                ordered_apps[same_day_app_index].push(app.time_start)
            else
                new_day_number = {
                    app.day_number => [app.time_start]
                }
                ordered_apps.push(new_day_number)
            end
        end
        ordered_apps
    end

end
