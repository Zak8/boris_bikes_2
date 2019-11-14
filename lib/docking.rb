class DockingStation
  attr_reader :bike

  def release_bike(amount_of_bikes)
    Bike.new if amount_of_bikes > 0
    else
  end

  def dock(bike)
    @bike = bike
  end

  def see
    @bike
  end
end
