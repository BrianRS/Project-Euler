def factor(n)
	return [n] if is_prime? n 
	p = 2
	until n % p == 0 # we find a factor of n
		p = next_prime(p)
	end
	return [p].concat(factor(n/p))
end

def next_prime(n)
	i = n + 1
	until is_prime? i
		i += 1
	end
	return i
end

def is_prime?(n)
	return true if n == 2
	sq = Math.sqrt(n).ceil
	(2..sq).each do |i|
		return false if n % i == 0
	end
	return true
end

def highest_factor(n)
	a = factor(n)
	puts a.max
end

highest_factor(600851475143)
