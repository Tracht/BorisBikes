class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" unless @bikes.count != 0
    @bikes.pop
  end

  def dock(bike)
    fail "Dock is full" unless @bikes.count != 20
    @bikes.push(bike)
  end
end

class Bike
  def working?
    true
  end
end
