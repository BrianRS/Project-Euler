class Integer
	def divisors
		return [1] if self == 1
		lim = Math.sqrt(self)
		divs = [1]
		(2..lim).each do |i|
			if self % i == 0
				divs << i
				divs << (self / i) unless i == lim #othewise sqrt shows up twice
			end
		end
		return divs << self
	end
end

def triangle(n)
	(1..n).inject(:+)
end

def print_factors
	(1..7).each do |i|
		t = triangle(i)
		puts "#{t}: #{t.divisors.join(", ")}"
	end
end

def find_num
	i = 0
	loop do
		i += 1
		t = triangle i
		if t.divisors.length > 500
			puts t
			exit 0
		end
	end
end

#puts (1..9).map { |n| triangle(n) }
#print_factors
#puts triangle(7).divisors.length > 5
find_num
