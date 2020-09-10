class Array
  def keep
    (self.map { |elem| elem if yield(elem) }).compact
  end

  def discard
    (self.map { |elem| elem unless yield(elem) }).compact
  end
end

