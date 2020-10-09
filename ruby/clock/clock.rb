class Clock
  def initialize(time_parts)
    @hours = time_parts[:hour]
    @minutes = time_parts[:minute]
  end
  
  def make_time
    Time.new(2001, 01, 01, @hours, @minutes)
  end

  def to_s
    make_time.strftime("%H:%M")
  end
end