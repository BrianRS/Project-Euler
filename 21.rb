def list(limit)
	amicables = []
	(1...limit).each do |a|
		b = d(a)
		if a == d(b) and b < limit and a != b
			amicables << a
			#amicables << b
		end
	end
	return amicables
end

def d(n)
	lim = Math.sqrt(n).to_i
	lower_divs = []
	(1..lim).each do |i|
		if n % i == 0
			lower_divs << i
		end
	end
	upper_divs = lower_divs.map {|i| n/i }
	divisors = lower_divs.concat upper_divs
	divisors.delete n
	return divisors.inject(0, :+)
end

#puts d(220)
#puts d(284)
#puts list(285).inject(0, :+)
puts list(10_000).inject(0, :+)
