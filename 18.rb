tri1 = <<HERE
3
7 4
2 4 6
8 5 9 3
HERE

tri2 = <<HERE
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
HERE

def triangle(s)
	s.lines.to_a.map {|l| l.chop.split.map(&:to_i)}
end

t1 = triangle(tri1)
t2 = triangle(tri2)

def val(tri, row, pos)
	if tri[row+1][pos] > tri[row+1][pos+1]
		tri[row+1][pos] + tri[row][pos]
	else
		tri[row+1][pos+1] + tri[row][pos]
	end
end

def fold_triangle(tri)
	last = tri.length - 2
	last.downto 0 do |row|
		new_row = []
		tri[row].each_with_index { |n, i| new_row << val(tri, row, i) }
		tri[row] = new_row
	end
	return tri[0][0]
end

if __FILE__ == $PROGRAM_NAME
  #puts fold_triangle(t1)
	puts fold_triangle(t2)
end
