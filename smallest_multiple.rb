# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'benchmark'
def find_smallest_dividend(max_divisor)
  return 0 if max_divisor <= 0

  current_value = max_divisor
  loop do
    break if (1..max_divisor).all? { |n| (current_value % n).zero? }
    current_value += max_divisor
  end

  current_value
end
find_smallest_dividend(20)

 puts "Smallest number = #{find_smallest_dividend(20)}"

 Benchmark.bm do |x|
   x.report("ten:"){ find_smallest_dividend(13) }
   x.report("twenty:") { find_smallest_dividend(20) }
  
 end
