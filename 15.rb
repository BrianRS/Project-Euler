#look at the points between squares. Then there's 3x3 points in a 2x2 squares
#grid...and 21x21 points in a 20x20 sq. grid
#use dynamic programming to figure out number of paths

#initialize 21x21 grid
paths = []
0.upto 20 do |i|
	paths[i] = []
end

0.upto 20 do |x|
	paths[20][x] = 1
	paths[x][20] = 1
end

19.downto 0 do |i|
	19.downto 0 do |j|
		paths[i][j] = paths[i+1][j] + paths[i][j+1]
	end
end

puts paths[0][0]
