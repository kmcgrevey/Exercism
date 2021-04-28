class Integer
  ROMANS = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }
  
  def to_roman
    number = self
    numeral = ''
    
    until number == 0
      if number >= 1000
        numeral << ROMANS[1000]
        number -= 1000
      elsif number >= 900
        numeral << ROMANS[900]
        number -= 900
      elsif number >= 500
        numeral << ROMANS[500]
        number -= 500
      elsif number >= 400
        numeral << ROMANS[400]
        number -= 400
      elsif number >= 100
        numeral << ROMANS[100]
        number -= 100
      elsif number >= 90
        numeral << ROMANS[90]
        number -= 90
      elsif number >= 50
        numeral << ROMANS[50]
        number -= 50
      elsif number >= 40
        numeral << ROMANS[40]
        number -= 40
      elsif number >= 10
        numeral << ROMANS[10]
        number -= 10
      elsif number == 9
        numeral << ROMANS[9]
        number -= 9
      elsif number >= 5
        numeral << ROMANS[5]
        number -= 5
      elsif number == 4
        numeral << ROMANS[4]
        number -= 4
      elsif number < 4
        numeral << ROMANS[1]
        number -= 1
      end
    end

    numeral
  end
  
end
