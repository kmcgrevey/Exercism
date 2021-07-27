class Triangle

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    (counts.keys.count == 1) if @sides.all? { |side| side > 0 }
  end

  def isosceles?
    counts.values.any? { |value| value >= 2 } && inequal_rule
  end

  def scalene?
    counts.values.all? { |value| value == 1 } && inequal_rule
  end

  def counts
    @sides.each_with_object(Hash.new(0)) { |num, counts| counts[num] += 1}
  end

  def inequal_rule
    (@sides[0] + @sides[1] >= @sides[2]) &&
    (@sides[0] + @sides[2] >= @sides[1]) && 
    (@sides[1] + @sides[2] >= @sides[0])
  end

end
