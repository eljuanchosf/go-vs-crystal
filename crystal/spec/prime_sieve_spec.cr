require "spec"
require "../src/generator/prime_sieve.cr"

sieve_of_100 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

sieve_of_200 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]

describe PrimeSieve do
  describe "#eratosthenes" do
    it "returns an empty array when max is 0" do
      PrimeSieve.eratosthenes(0).should eq [] of Int32
    end
    it "returns an empty array when max is less than 3" do
      PrimeSieve.eratosthenes(2).should eq [] of Int32
    end
    it "returns the firsts prime numbers of a max of 100" do
      PrimeSieve.eratosthenes(100).should eq sieve_of_100
    end
    it "returns the firsts prime numbers of a max of 200" do
      PrimeSieve.eratosthenes(200).should eq sieve_of_200
    end
  end
end