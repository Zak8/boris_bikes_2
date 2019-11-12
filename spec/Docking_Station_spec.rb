require "Docking_Station"

describe "DockingStation" do
  it "should exist" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end

  it { expect(DockingStation.new).to respond_to(:release_bike) }

end
