class DockingStation
  attr_reader :bike

  def release_bike
    if @_more_bikes == nil
      raise "There are no bikes to be release."
    else
      bike = @bike
      @more_bikes = nil
      bike
    end
  end

  def dock(bike)
    if @more_bikes
      raise "There is already one bike in the station."
    else
      @more_bikes = bike
    end
  end

  def see
    @more_bikes
  end
end
