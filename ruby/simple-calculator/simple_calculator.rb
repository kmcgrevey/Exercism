class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    total = first_operand.public_send operation, second_operand
    # raise ZeroDivisionError, 'Division by zero is not allowed.' unless total

    "#{first_operand} #{operation} #{second_operand} = #{total}"
  end
end
