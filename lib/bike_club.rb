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
  
end