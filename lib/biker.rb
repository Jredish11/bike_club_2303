class Biker
  attr_reader :name, 
              :max_distance,
              :rides,
              :acceptable_terrain
  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = Hash.new
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    acceptable_terrain << terrain
  end

  def log_ride(ride, personal_record)
    if !acceptable_terrain.include?(ride.terrain) || ride.distance > @max_distance
      nil
    elsif rides[ride].nil?
      rides[ride] = [personal_record]
    else 
      rides[ride] << personal_record
    end
  end

  def personal_record(ride)
    if rides[ride] == nil
      false
    else
      rides[ride].min
    end
  end
end