require './lib/ride'
require './lib/biker'
require './lib/bike_club'


RSpec.describe BikeClub do
  describe "Bike Club" do
    it "exits, has attributes" do
      bike_club = BikeClub.new("2 Wheel Mafia")
      expect(bike_club).to be_a(BikeClub)
      expect(bike_club.name).to eq("2 Wheel Mafia")
    end
  end
end





# Each BikeClub has a name, as well as a way to read that data

# Each BikeClub has a list of Bikers, and the BikeClub can add new Bikers.

# Additionally, use TDD to add the following functionality to the BikeClub class. A passing challenge will complete at least one of the following. We recommend completing more than one if you have time.

# A BikeClub can tell us which Biker has logged the most rides.
# A BikeClub can tell us which Biker has the best time for a given Ride.
# A BikeClub can tell us which Bikers are eligible for a given Ride. A Biker is eligible for a Ride if the terrain is acceptable to them and the total distance does not exceed their max distance.
# Method Name	Return Value
# name	Club name as a String
# bikers	Array of Biker objects
# add_biker(biker)	Array of Biker objects
# most_rides	Biker object
# best_time(ride)	Biker object
# bikers_eligible(ride)	Array of Biker objects