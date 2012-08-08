(1..333).each do |a|
	b = (500_000 -1000*a)/(1000-a)
	c = 1000 - b - a
	if a**2 + b**2 == c**2
		puts a
		puts b
		puts c
		puts a*b*c
		exit(0)
	end
end
