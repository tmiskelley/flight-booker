class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passengers = params[:passengers].to_i
    @booking.passengers.build
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = "Flight booked successfully!"
      redirect_to root_path
    else
      flash.now[:error] = "The flight booking could not be submitted"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
