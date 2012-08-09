#without use of date libraries

#days in 20th century
days = 365 * 100
days += 25 #leap years

mlength = {jan: 31, feb: 28, mar: 31, apr: 30, may: 31, jun: 30, jul: 31,
aug: 31, sep: 30, oct: 31, nov: 30, dec: 31}
months = %w(jan feb mar apr may jun jul aug sep oct nov dec)

sundays = 0
leap = 0
curr_month = 0
d = 1

while d < days
	if d % 7 == 6
		sundays += 1
	end
	d += mlength[months[curr_month % 12].to_sym]
	curr_month += 1
	
	if months[curr_month] == "feb"
		leap += 1
	end
	if leap % 4 == 0 #and not curr_month/12 == 100
		d += 1
		leap = 0
	end
end

puts sundays
