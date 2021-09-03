class AssemblyLine
  CARS_PER_HOUR = 221.0

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate = CARS_PER_HOUR * @speed

    if (@speed >= 5) && (@speed <=8)
      rate * (0.9)
    elsif @speed == 9
      rate * (0.8)
    elsif @speed == 10
      rate * (0.77)
    else
      rate
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
