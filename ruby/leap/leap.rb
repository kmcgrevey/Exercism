class Year

    def self.leap?(year)
      # binding.pry
      if year % 4 == 0
        true
      else
        false
      end
    end

end

# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
