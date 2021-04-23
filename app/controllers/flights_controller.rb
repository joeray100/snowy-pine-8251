class FlightsController < ApplicationController
  def index
    require 'pry'; binding.pry
    @flights = Flight.all
    # @airline = @flight.airline
    # @passengers = @flight.passengers
  end
end
