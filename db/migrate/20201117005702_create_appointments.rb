class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :duration
      t.integer :time_start
      t.integer :day_number
      t.integer :month_number
      t.string :service_name

      t.timestamps
    end
  end
end
