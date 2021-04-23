require 'rails_helper'

RSpec.describe PassengerFlight, type: :model do
  describe "relationships" do
    it {should belong_to :flight}
    it {should belong_to :passenger}
  end

  before(:each) do
    @airline_1 = Airline.create!(name: "Frontier")

    @flight_1 = @airline_1.flights.create!(number: "1727", date: "08/03/20", departure_city: "Denver", arrival_city: "Reno")
    @flight_2 = @airline_1.flights.create!(number: "1628", date: "08/20/21", departure_city: "Atlanta", arrival_city: "Detriot")

    @flight_3 = @airline_1.flights.create!(number: "1212", date: "09/10/22", departure_city: "Columbus", arrival_city: "Austin")
    @passenger_1 = @flight_3.passengers.create!(name: "Tim", age: 22)
    @passenger_2 = @flight_3.passengers.create!(name: "Tyna", age: 30)
    @passenger_3 = @flight_3.passengers.create!(name: "Craig", age: 15)
  end
end
