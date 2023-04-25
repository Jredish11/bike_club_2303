class BikeClub
  attr_reader :name, :list
  def initialize(name)
    @name = name
    @list = []
  end

  def add_biker(biker)
    list << biker
  end

  def most_rides
    list.max_by { |biker| biker.rides.count }
  end

  def best_time(ride)
    list.min_by { |biker| biker.personal_record(ride) }
  end

  def bikers_eligible(ride)
    list.select do |biker| 
      biker.acceptable_terrain.include?(ride.terrain) && ride.distance <= biker.max_distance
    end
  end
end