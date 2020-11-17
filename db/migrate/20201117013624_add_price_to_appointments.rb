class AddPriceToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :price, :integer
  end
end
