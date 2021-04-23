class Flight < ApplicationRecord
  belongs_to :airline, optional: true
  has_many :passenger_flights
  has_many :passengers, through: :passenger_flights

  def self.passengers
    passengers.joins(:passenger_flights)
    .select('passengers.*')
    .where('passenger_flights.flight_id')
  end

  # SELECT "passengers".* FROM "passengers" INNER JOIN "passenger_flights" ON "passengers"."id" = "passenger_flights"."passenger_id" WHERE "passenger_flights"."flight_id"

  # def self.airline
  #   joins(:airline)
  #   .select('airlines.name')
  # end
end
