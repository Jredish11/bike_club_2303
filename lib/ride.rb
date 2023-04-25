class Ride
  attr_reader :name,
              :distance,
              :terrain,
              :loop

  def initialize(data)
    @name = data[:name]
    @distance = data[:distance]
    @terrain = data[:terrain]
    @loop = data[:loop]
  end

  def loop?
    @loop
  end

  def total_distance
    distance * 2
  end

end