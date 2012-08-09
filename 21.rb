def list(limit)
	amicables = []
	(1...limit).each do |a|
		b = d(a)
		if a == d(b) and b < limit and a != b
			amicables << a
			#amicables << b
			puts "found #{a} and #{b}"
		end
	end
	return amicables
end

def d(n)
	lim = n/2 + 1
	sum = 0
	(1...lim).each do |i|
		if n % i == 0
			sum += i
		end
	end
	return sum
end

#puts d(220)
#puts d(284)
#puts list(285).inject(0) {|sum, n| sum += n }
puts list(10_000).inject(0) {|sum, n| sum += n }
