class FlightsController < ApplicationController
  def index
    @flight = Flight.find(params[:flight_id])
    @airline = @flight.airline
    @passengers = @flight.passengers
  end
end
