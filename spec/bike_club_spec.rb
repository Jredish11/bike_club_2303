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

    it "has a list of bikers" do
      bike_club = BikeClub.new("2 Wheel Mafia")
      expect(bike_club.list).to eq([])
    end

    it "can add bikers to the list" do
      bike_club = BikeClub.new("2 Wheel Mafia")
      biker1 = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)
      bike_club.add_biker(biker1)
      bike_club.add_biker(biker2)
      expect(bike_club.list).to eq([biker1, biker2])
    end

    it "can tell us which Biker has logged the most rides" do
      bike_club = BikeClub.new("2 Wheel Mafia")
      biker1 = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)
      bike_club.add_biker(biker1)
      bike_club.add_biker(biker2)
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
      biker1.learn_terrain!(:gravel)
      biker1.learn_terrain!(:hills)
      biker2.learn_terrain!(:gravel)
      biker2.learn_terrain!(:hills)
      biker1.log_ride(ride1, 92.5)
      biker2.log_ride(ride2, 60.9)
      biker1.log_ride(ride2, 61.6)

      expect(bike_club.most_rides).to eq(biker1)
    end

    it "can tell us which Biker has the best time for a given Ride" do
      bike_club = BikeClub.new("2 Wheel Mafia")
      biker1 = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)
      bike_club.add_biker(biker1)
      bike_club.add_biker(biker2)
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
      biker1.learn_terrain!(:gravel)
      biker1.learn_terrain!(:hills)
      biker2.learn_terrain!(:gravel)
      biker2.learn_terrain!(:hills)
      biker1.log_ride(ride1, 92.5)
      biker2.log_ride(ride1, 69.9)
      biker1.log_ride(ride2, 61.6)
      biker2.log_ride(ride2, 65.9)
      expect(bike_club.best_time(ride1)).to eq(biker2)
      expect(bike_club.best_time(ride2)).to eq(biker1)
    end
  end
end







# Additionally, use TDD to add the following functionality to the BikeClub class. A passing challenge will complete at least one of the following. We recommend completing more than one if you have time.


# A BikeClub can tell us which Biker has the best time for a given Ride.
# A BikeClub can tell us which Bikers are eligible for a given Ride. A Biker is eligible for a Ride if the terrain is acceptable to them and the total distance does not exceed their max distance.
