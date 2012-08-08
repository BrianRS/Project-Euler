(1..333).each do |a|
	#a+b+c=1000 so c=1000-b-a
	#so a^2 + b^2 = (1000-b-a)^2
	#solving for b, we get:
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
