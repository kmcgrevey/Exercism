class Clock
  def initialize(time_parts)
    @hours = time_parts[:hour]
    make_time
  end
  
  def make_time
    time = Time.new(2001, 01, 01, @hours)
    time.strftime("%I:%M")
  end
end