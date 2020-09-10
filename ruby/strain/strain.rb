class Array
  # def keep
  #   (self.map { |elem| elem if yield(elem) }).compact
  # end
  def keep
    self.reduce([]) do |keep, elem|
      keep << elem if yield(elem)
      keep
    end
  end

  def discard
    (self.map { |elem| elem unless yield(elem) }).compact
  end
end

