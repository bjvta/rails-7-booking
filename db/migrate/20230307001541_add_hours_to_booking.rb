class AddHoursToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :hours, :integer, default: 2
  end
end
