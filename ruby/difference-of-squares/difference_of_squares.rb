class Squares
  def initialize(range)
    @range = (1..range)
  end

  def square_of_sum
    (@range.sum) ** 2
  end

  def sum_of_squares
    (@range.map { |num| num ** 2 }).sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end