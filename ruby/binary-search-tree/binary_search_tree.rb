class Bst
  attr_reader :data
  attr_accessor :left, :right

  def initialize(num)
    @data = num
    @left = nil
    @right = nil
  end

  def insert(num)
    if num <= data
      insert_left(num)
    else
      insert_right(num)
    end
  end

  def insert_left(num)
    if left
      left.insert(num)
    else
      @left = Bst.new(num)
    end
  end

  def insert_right(num)
    if right
      right.insert(num)
    else
      @right = Bst.new(num)
    end
  end

  def each(&block)
    return to_enum unless block_given?

		left.each(&block) if left
		yield(data)
		right.each(&block) if right
  end

end
