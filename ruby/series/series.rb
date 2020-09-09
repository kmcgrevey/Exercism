class Series
  def initialize(given_list)
    @given_list = given_list
  end

  def slices(size)
    raise ArgumentError if size > @given_list.length
    groups = []
    list = @given_list.split("")
    list.each_cons(size) { |chars| groups << chars }
    groups.map { |group| group.join }
  end
end

