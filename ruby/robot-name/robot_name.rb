class Robot
  attr_reader :name

  @@names = ('AA000'..'ZZ999').to_a.shuffle.cycle

  def initialize
    @name = make_name
  end
  
  def self.forget
  end
  
  def reset
    @name = make_name
  end

  def make_name
    @@names.next
  end
end