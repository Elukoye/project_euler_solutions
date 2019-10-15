## The prime factors of 13195 are 5, 7, 13 and 29.

##  What is the largest prime factor of the number 600851475143 ?

require 'prime'

def max_prime(num)
 if num <= 1
    return "choose a number greater than 1"
  else
   prime_array =Prime.prime_division(num)
   #=> [[71, 1], [839, 1], [1471, 1], [6857, 1]]
   result = prime_array.max_by(&:first)
   #=>[6857, 1]
   result.first 
   #=>6857
  end
end

max_prime(600851475143)
