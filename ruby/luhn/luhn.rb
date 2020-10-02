class Luhn
  def self.valid?(num)
    if num.length <= 1
      # binding.pry
      false
    else
      luhn_check(num)
    end
  end
  
  def self.luhn_check(num)
    nums = num.split("").map { |num| num.to_i }
    first_nums = firsts(nums)
    second_nums = seconds(nums)
    ((first_nums+second_nums).sum) % 10 == 0
  end
  
  def self.firsts(nums)
    nums.find_all.each_with_index { |dig, index| index.even?}
  end

  def self.seconds(nums)
    list = nums.find_all.each_with_index { |dig, index| index.odd?}
    list.map do |dig|
      if (dig * 2) > 9
        (dig * 2) - 9
      else
        dig
      end
    end
  end

end

