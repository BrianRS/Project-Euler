class Integer
	def proper_divisors_sum
		return 0 if self == 1
		lim = Math.sqrt(self)
		divs = []
		(2..lim).each do |i|
			if self % i == 0
				divs << i
				divs << (self / i) unless i == lim #othewise sqrt shows up twice
			end
		end
		return divs.inject(0, :+)
	end
 
	def abundant?
		self.proper_divisors_sum > self
	end
end

#find all abundants up to 28123
limit = 28123
ab = (12..limit).select { |n| n.abundant? }

#find all sums of those abundants
sum_ab = []
l = ab.size() -1
0.upto l do |i|
	i.upto l do |j|
		num = ab[i] + ab[j]
		sum_ab << num unless num > limit
	end
end

sum_ab.sort!
sum_ab.uniq!

class Array
	def bsearch(e, l = 0, u = length - 1)
		return if l>u;m=(l+u)/2;e<self[m]?u=m-1:l=m+1;e==self[m]?m:bsearch(e,l,u)
	end
end

puts (1..limit).reject { |i| sum_ab.bsearch i }.inject(:+)
