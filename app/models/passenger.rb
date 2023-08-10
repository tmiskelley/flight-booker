class Passenger < ApplicationRecord
  validates :name, :email, presence: true

  has_many :passenger_bookings
  has_many :bookings, through: :passenger_bookings
end
