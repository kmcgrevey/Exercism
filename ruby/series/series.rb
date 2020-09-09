class Series
  
  def initialize(given_list)
    @given_list = given_list
  end

  def slices(size)
    groups = []
    list = @given_list.split("")
    list.each_cons(size) { |char| groups << char }
    groups.flatten
  end
end

