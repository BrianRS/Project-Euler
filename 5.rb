def divisible?(n)
	10.upto 10 do |i|
		return false if n % i != 0
	end
	return true
end

def smallest
	i = 100
	while not divisible? i
		i += 1
	end
	i
end

puts smallest
