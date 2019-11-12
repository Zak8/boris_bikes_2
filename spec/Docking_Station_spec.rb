require "Docking_Station"
require "bike"

describe "DockingStation" do
  it "should exist" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end

  it { expect(DockingStation.new).to respond_to(:release_bike) }

  it { expect(DockingStation.new.release_bike).to be_instance_of Bike }

  it { expect(Bike.new).to respond_to(:working?) }

end
