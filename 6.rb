upper = 100
sum_of_sq = (1..upper).map { |n| n**2 }.inject(0) {|sum, n| sum+= n}
sq_of_sum = ((upper/2)*(upper+1))**2

puts  sq_of_sum - sum_of_sq
