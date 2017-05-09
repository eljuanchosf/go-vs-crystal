# Crystal Vs. Go

## Objective

This is a simple performance test framework for Crystal Vs Go.

## Requirements

* Install Go
* Install Crystal

## Usage

* Run `test_with_primes.sh` specifying a limit for prime generation:

```
$ ./test_with_primes.sh 100000
```

This will explore and retrieve the prime numbers between 1 and 100000

## Output

Something similar to:

```
crystal > 
real	0m0.043s
user	0m0.040s
sys     0m0.005s
golang > 
real	0m0.007s
user	0m0.003s
sys  	0m0.004s
```
