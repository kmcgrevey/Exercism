class Array

    def accumulate
      list = []
      self.each { |elem| list << yield(elem) }
     
      list
    end

end
