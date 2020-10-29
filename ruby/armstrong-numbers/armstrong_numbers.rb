class ArmstrongNumbers
  def self.include?(num)
    armstrong(num) ? true : false
  end
  
  def self.armstrong(num)
    num_list = num.to_s.split("")
    power = num_list.length
    raised = num_list.map { |number| (number.to_i) ** power}
    raised.sum == num
  end
end

