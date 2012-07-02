curr_num = 3
primes_found = 2
nth_prime = 10_001

def prime?(n)
	sq = Math.sqrt(n).ceil
	2.upto sq do |i|
		return false if n % i == 0
	end
	return true
end

while primes_found != nth_prime do
	curr_num += 2
	if prime? curr_num
		primes_found += 1
	end
end
puts curr_num
