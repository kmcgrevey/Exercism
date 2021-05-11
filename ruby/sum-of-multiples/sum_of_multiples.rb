class SumOfMultiples

  def initialize(num1, num2)
    @numbers = [num1, num2]
  end

  def to(limit)
    list = []

    @numbers.each do |num|
      multiplier = 1
      while num * multiplier < limit
        list << num * multiplier
        multiplier += 1
      end
    end
  
    list.uniq.sum
  end

end