class Darts

  def initialize(xco, yco)
    @xco = xco
    @yco = yco
  end

  def score
    radius = Math.sqrt(@xco**2 + @yco**2)
    
    return 0 if radius > 10
    return 1 if radius <= 10 && radius > 5
    return 5 if radius <= 5 && radius > 1
    return 10 if radius <= 1
  end

end
