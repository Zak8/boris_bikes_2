require "docking"
require "bike"

describe "DockingStation" do
  it "should exist" do
    expect(DockingStation.new).to be_instance_of DockingStation
  end

  describe "#release_bike" do
    it "responds to the release_bike method" do
      expect(DockingStation.new).to respond_to(:release_bike)
    end
    it "returns a bike object" do
        expect(DockingStation.new.release_bike).to be_instance_of Bike
    end
  end
  describe "#dock" do
    it "responds to the dock method" do
      expect(DockingStation.new).to respond_to(:dock)
    end
    it "takes 1 argument" do
      expect(DockingStation.new).to respond_to(:dock).with(1).argument
    end
    it "should dock the bike" do
      docking_station = DockingStation.new
      bike = Bike.new
      expect(docking_station.dock(bike)).to eq bike
    end
  end
  describe "#see" do
    it "responds to the see method" do
      expect(DockingStation.new).to respond_to(:see)
  end
    # it "the bike" do
    #   docking_station = DockingStation.new
    #   bike = Bike.new
    #   expect(docking_station.see(bike)).to eq(bike)
    # end
end
end
