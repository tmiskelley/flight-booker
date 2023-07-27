class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departure_id, null: false, foreign_key: true
      t.integer :destination_id, null: false, foreign_key: true
      t.datetime :date, null: false
      t.integer :duration, null: false

      t.timestamps
    end
  end
end
