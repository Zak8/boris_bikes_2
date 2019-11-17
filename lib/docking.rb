class DockingStation
  attr_reader :bikes
  attr_reader :DEFAULT_CAPACITY
  @@DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      raise "There are no bikes to be release."
    else
      bike = @bikes.pop
      bike
    end
  end

  def dock(bike)
    if full?
      raise "There can't be more than 20 bikes in the array."
    else
      @bikes.push(bike)
      bike
    end
  end

  def see
    @bikes
  end

  private
  def empty?
    @bikes.length == 0
  end

  def full?
    @bikes.length == @@DEFAULT_CAPACITY
  end
end
# Define a method that returns true or false.
