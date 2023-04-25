require './lib/ride'

RSpec.describe Ride do
  describe "Ride" do
    it "exists, has attributes" do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      expect(ride1).to be_a(Ride)
      expect(ride1.name).to eq("Walnut Creek Trail")
      expect(ride1.distance).to eq(10.7)
      expect(ride1.terrain).to eq(:hills)
      expect(ride1.loop?).to eq(false)
    end

    it "has a total distance" do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      expect(ride1.total_distance).to eq(21.4)
    end
  end
end










# > ride1.loop?
# # => false

# > ride1.total_distance
# # => 21.4

# > ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
# # => #<Ride:0x00007f845c228b38...>

# > ride2.loop?
# # => true

# > ride2.total_distance
# # => 14.9