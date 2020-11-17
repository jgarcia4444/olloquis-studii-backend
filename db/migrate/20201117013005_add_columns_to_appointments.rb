class AddColumnsToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :first_name, :string
    add_column :appointments, :last_name, :string
    add_column :appointments, :email, :string
  end
end
