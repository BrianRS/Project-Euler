require 'prime'
limit = 2_000_000
sum = Prime.each.take_while { |p| p < limit }.inject(0){|sum,x| sum + x }
puts sum
