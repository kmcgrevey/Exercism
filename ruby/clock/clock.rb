class Clock
  attr_accessor :minutes, :hours

  def initialize(time_parts)
    @hours = time_parts[:hour]
    @minutes = time_parts[:minute]
  end
  
  def make_time
    make_hours
    if @minutes && (@minutes >= 60 || @minutes.negative?)
      min_hr = @minutes / 60
      mins = @minutes - (min_hr * 60)
      @hours += min_hr
      # @hours >= 24 ? make_hours : @hours
      @hours = make_hours
      @minutes = mins
    end

    time = Time.new(2001, 01, 01, @hours, @minutes)
    time.strftime("%H:%M")
    # binding.pry
  end

  def make_hours
    @hours ? (@hours = @hours % 24) : (@hours = 0)
  end

  def to_s
    # make_time.strftime("%H:%M")
    make_time
  end

  def +(new_clock)
    new_clock.make_hours
    @minutes += new_clock.minutes
    to_s
  end
 
  def -(new_clock)
    new_clock.make_hours
    @minutes -= new_clock.minutes
    to_s
  end

  def ==(new_clock)
    to_s == new_clock.to_s
  end
end