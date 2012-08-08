def collatz(n)
	if n % 2 == 0
		return n/2
	else
		return 3*n + 1
	end
end
		
def chain_length(n)
	length = 1
	while n != 1
		n = collatz(n)
		length += 1
	end
	return length
end

max_length = 1
max_num = 1

(1...1_000_000).each do |n|
	curr_length = chain_length(n)
	if curr_length > max_length
		max_length = curr_length
		max_num = n
	end
end

puts max_length
puts max_num
