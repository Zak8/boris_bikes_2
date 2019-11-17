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
        docking_station = DockingStation.new
        bike = Bike.new
        docking_station.dock(bike)
        expect(docking_station.release_bike).to eq bike
    end

    it "should throw an error after releasing the bike" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
      expect{docking_station.release_bike}.to raise_error("There are no bikes to be release.")
    end

    it "throw an error when there are no bikes" do
        # expect(DockingStation.new.release_bike).to raise_error("There are no bikes to be release.")
        expect{DockingStation.new.release_bike}.to raise_error("There are no bikes to be release.")
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

    it "throw an error there is already one bike in station" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      bikeTwo = Bike.new
      expect{docking_station.dock(bikeTwo)}.to raise_error("There is already one bike in the station.")
    end

    it "Should allow the docking of 20 bikes." do
      docking_station = DockingStation.new
      bike = Bike.new
      expect {20.times {docking_station.dock Bike.new}}.to eq 20
    end
  end
  describe "#see" do
    it "responds to the see method" do
      expect(DockingStation.new).to respond_to(:see)
  end
    it "the bike" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.see).to eq(bike)
    end
end
end
