class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike_stored = bike
    return true
  end
end

class Bike
  def working?
    true
  end
end
