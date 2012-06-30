fib1 = 1
fib2 = 2
sum = 2

loop do
	temp = fib1 + fib2
	if temp >= 4_000_000
		break
	end
	
	if temp % 2 == 0
		sum += temp
	end

	fib1 = fib2
	fib2 = temp
end

puts "sum = #{sum}"
