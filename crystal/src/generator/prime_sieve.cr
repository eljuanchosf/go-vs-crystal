require "math"

class PrimeSieve
  def self.eratosthenes(max : Int32)
    if max < 3
      return [] of Int32
    end
    
    is_prime = Array(Bool).new(max, true)
    is_prime[0] = false
    is_prime[1] = false

    # Cross out multiples of 2
    i = 4
    while i < max
      is_prime[i] = false
      i+=2
    end

    limit = Math.sqrt(max)
    p = 3
    while p < limit
      if is_prime[p]
        multiple = p * p
        while multiple < max
          is_prime[multiple] = false
          multiple+=(2 * p)
        end
      end
      p+=2
    end

    primes = [] of Int32

    is_prime.each_with_index do |prime, index| 
      primes << index if prime
    end

    primes

  end
end