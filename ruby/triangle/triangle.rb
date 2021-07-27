class Triangle

  def initialize(sides)
    # @side1 = sides[0]
    # @side2 = sides[1]
    # @side3 = sides[2]
    @sides = sides
  end

  def equilateral?
    @sides.all? { |side| @sides[1] == side }
  end

end
