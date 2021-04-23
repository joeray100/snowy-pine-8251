class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    # @airline = @flight.airline
    # @passengers = @flight.passengers
  end
end
