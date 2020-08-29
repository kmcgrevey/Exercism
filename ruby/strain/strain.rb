class Array

  def keep
    keepers = []
    # find_all { |e| e < 10 }
    # find_all { |e| e%2 != 0 }
    # find_all { |e| e%2 == 0 }
    # find_all { |e| e[0] == 'z' }
    find_all { |row| row.include?(5) }
    # binding.pry
  end

end

