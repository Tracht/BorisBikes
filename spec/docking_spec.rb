require "BorisBikes.rb"

# in lib/BorisBikes.rb

describe DockingStation do
  it "feature test release bike" do
    is_expected.to respond_to(:release_bike)
  end

  # Option 2 #
  # docking_station = DockingStation.new
  # it  do
  #   expect(docking_station).to respond_to(:release_bike)
  # end

  it "releases new bike" do
    expect(subject.release_bike).to be_a Bike
  end

  it "checks new bike works" do
    expect(subject.release_bike.working?).to eq(true)
  end

  it "feature test - docking bike" do
    is_expected.to respond_to(:dock)
  end

  it "docks the bike" do
    expect(subject.dock(Bike.new)).to eq(true)
  end

  it "checks whether bike exists in dock" do
    subject.dock(Bike.new)
    expect(subject.bike_stored).to be_a Bike
  end
end
