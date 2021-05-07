class PhoneNumber

  def self.clean(number)
    num = number.split('').find_all { |num| ('0'..'9').include?(num) }
    # binding.pry
    num.join
  end

end