class DockingStation
  attr_reader :bike_stored

  def initialize
    @bike_stored = []
  end

  def release_bike
    fail "No bikes available" unless bike_stored.count != 0
    bike_stored.pop
  end

  def dock(bike_stored)
    @bike_stored.push(bike_stored)
  end
end

class Bike
  def working?
    true
  end
end
