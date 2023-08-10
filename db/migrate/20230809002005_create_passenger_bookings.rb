class CreatePassengerBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :passenger_bookings do |t|
      t.integer :passenger_id, null: false, foreign_key: true
      t.integer :booking_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
