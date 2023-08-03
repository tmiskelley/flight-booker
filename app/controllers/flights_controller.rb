class FlightsController < ApplicationController
  def index
    @flights = Flight.includes(:departure, :destination).all
  end

  def show
    @flight = Flight.includes(:departure, :destination).find_by(id: params[:id])
  end

  def search
    departure = params[:departure]
    destination = params[:destination]

    @flights = Flight.where("departure_id LIKE ? AND destination_id LIKE ?", "%#{departure}%", "%#{destination}%")

    render :index
  end
end
