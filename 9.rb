(0..333).each do |a|
	(a+1..666).each do |b|
		(b+1..1000).each do |c|
			if a + b + c == 1000
				if a**2 + b**2 == c**2
					puts a
					puts b
					puts c
					puts a*b*c
					exit(0)
				end
			end
		end
	end
end
