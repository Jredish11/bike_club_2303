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
    # A Biker is eligible for a Ride if the terrain is acceptable to them and the total distance does not exceed their max distance.
    list.each do |biker|
     biker.rides.map do |rides, record| 
      biker.log_ride(ride, record)
     end
    end
  end
  
end