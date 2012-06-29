sum = 0
(1...1000).each do |n|
	if n % 3 == 0 or n % 5== 0
		sum += n
	end
end

puts "sum = #{sum}"
