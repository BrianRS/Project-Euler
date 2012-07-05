def divisible?(n)
	11.upto 20 do |i|
		return false if n % i != 0
	end
	return true
end

def smallest
	i = 2000
	while not divisible? i
		i += 1
	end
	i
end

puts smallest
