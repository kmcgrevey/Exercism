class Luhn
  def self.valid?(num)
    nums = (num.gsub(" ","")).reverse.split("")
    if nums.length <= 1 || nums.any? { |item| !(("0".."9").include?(item)) }
      false
    else
      check_luhn(nums)
    end
  end

  def self.check_luhn(nums)
    nums_clean = nums.map { |num| num.to_i }
    ((firsts(nums_clean) + seconds(nums_clean)).sum) % 10 == 0
  end
  
  def self.firsts(nums)
    nums.find_all.each_with_index { |dig, index| index.even?}
  end

  def self.seconds(nums)
    list = nums.find_all.each_with_index { |dig, index| index.odd?}
    list.map do |dig|
      (dig * 2) > 9 ? ((dig * 2) - 9) : (dig * 2)
    end
  end
end

