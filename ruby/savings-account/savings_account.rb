module SavingsAccount
  def self.interest_rate(balance)
    return -3.213 if balance.negative?
    return 0.5 if (0...1000).include?(balance)
    return 1.621 if (1000...5000).include?(balance)
    return 2.475 if balance >= 5000
  end

  def self.annual_balance_update(balance)
    if balance.positive?
      (1 + (interest_rate(balance) / 100)) * balance
    else
      -(-1 + (interest_rate(balance) / 100)) * balance
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    t = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      t += 1
    end
    t
  end
end
