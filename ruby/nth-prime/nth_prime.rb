class Prime

  def self.nth(target)
    raise ArgumentError if target < 1

    primes = []
    number = 2
    
    until primes.size == target
      primes << number if primes.none? { |prime| number % prime == 0 }
      number += 1
    end

    primes.last
  end

end
