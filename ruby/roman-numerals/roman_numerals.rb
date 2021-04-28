class Integer
  ROMANS = {'1' => 'I'}
  
  def to_roman
    ROMANS[self.to_s]
  end
  
end
