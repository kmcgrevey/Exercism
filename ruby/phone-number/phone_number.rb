class PhoneNumber

  def self.clean(number)
    num = number.split('').find_all { |num| ('0'..'9').include?(num) }
    
    if (num.size == 11) && (num.first == '1')
      checkit(num.join[1..10])
    elsif (num.size == 10)
      checkit(num.join)
    end
  end

  def self.checkit(phone)
    phone if ('2'..'9').include?(phone[0]) && ('2'..'9').include?(phone[3])
  end

end