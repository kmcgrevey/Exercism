class PrimeFactors
  require 'prime'

  def self.of(num)
    primes = []
    
    Prime.each do |prime|
      return primes if num == 1
      
      until num % prime != 0
        num = num / prime
        primes << prime
      end
    end
     
    primes
  end

end
