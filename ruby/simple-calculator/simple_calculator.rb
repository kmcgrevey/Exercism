class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.class == Integer && second_operand.class == Integer
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    total = first_operand.public_send operation, second_operand
    "#{first_operand} #{operation} #{second_operand} = #{total}"
  rescue ZeroDivisionError => e
    'Division by zero is not allowed.'
  end

  class UnsupportedOperation < ArgumentError
  end
end
