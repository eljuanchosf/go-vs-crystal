require "./generator/prime_sieve.cr"

if ARGV[0]?
  s = PrimeSieve.eratosthenes(ARGV[0].to_i)
  puts "Generated #{s.size} primes"
else
  puts "Please enter a max number of integers to explore"
end