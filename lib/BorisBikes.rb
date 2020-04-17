class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes.push(bike)
  end

  private
  def full?
    fail "Dock is full" unless @bikes.count != 20
  end
  def empty?
    fail "No bikes available" unless @bikes.count != 0
  end

end

class Bike
  def working?
    true
  end
end
