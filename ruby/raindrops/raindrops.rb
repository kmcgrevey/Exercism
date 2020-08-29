class Raindrops

  def self.convert(number)
    @sound = ""
    pling(number)
    plang(number)
    plong(number)
    if @sound == ""
      number.to_s 
    else
      @sound
    end
  end

  def self.pling(number)
    @sound << "Pling" if number % 3 == 0
  end
  
  def self.plang(number)
    @sound << "Plang" if number % 5 == 0
  end
  
  def self.plong(number)
    @sound << "Plong" if number % 7 == 0
  end

end