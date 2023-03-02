class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.date :date
      t.time :time
      t.string :address

      t.timestamps
    end
  end
end
