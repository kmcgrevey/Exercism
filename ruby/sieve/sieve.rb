class Sieve

  def initialize(limit)
    @range = (2..limit).to_a.unshift(nil,nil)
    @limit = limit
  end

  def primes
    @range.each do |num|
      next unless num #skips if nil
      break if num*num > @limit
      
      (num*num).step(@limit, num) { |x| @range[x] = nil }
    end

    @range.compact
  end

end
