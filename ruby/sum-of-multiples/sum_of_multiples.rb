class SumOfMultiples

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    list = []

    @numbers.each do |num|
      multiplier = 1
      next if num * multiplier == 0
      while num * multiplier < limit
        list << num * multiplier
        multiplier += 1
      end
    end
  
    list.uniq.sum
  end

end