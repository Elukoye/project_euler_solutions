# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
num = 0
for i in (100..999)
 for j in (100..999)
   prod = j * i 
  if prod > num && prod.to_s == prod.to_s.reverse
    num = prod
  end 
 end
end
puts num  
