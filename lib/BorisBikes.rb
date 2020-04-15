class DockingStation
  attr_reader :bike_stored

  def release_bike
    Bike.new
  end

  def dock(bike_stored)
    @bike_stored = bike_stored
    return true
  end
end

class Bike
  def working?
    true
  end
end
