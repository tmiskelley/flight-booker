class BookingsController < ApplicationController
  def show
    @booking = Booking.find_by(id: params[:id])
    @flight = Flight.includes(:departure, :destination).find(@booking.flight_id)
    @passenger_bookings = PassengerBooking.where("booking_id LIKE ?", @booking.id)
    @passengers = find_passengers(@passenger_bookings)
  end

  def new
    @booking = Booking.new
    @flight = Flight.includes(:departure, :destination).find(params[:flight_id])
    @passengers = params[:passengers].to_i
    @booking.passengers.build
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.includes(:departure, :destination).find(params[:booking][:flight_id].to_i)

    if @booking.save
      flash[:success] = "Flight booked successfully!"
      redirect_to @booking
    else
      flash.now[:error] = "The flight booking could not be submitted, please refresh the page"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def find_passengers(passenger_bookings)
    passengers = []

    passenger_bookings.each do |record|
      passengers << Passenger.find(record.passenger_id).name
    end

    passengers
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
