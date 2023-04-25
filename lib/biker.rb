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
    if rides[ride].nil?
      rides[ride] = [personal_record]
    else
      rides[ride] << personal_record
    end
  end

  def personal_record(ride)
   rides[ride].min
  end

  
  
end