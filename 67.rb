require "./18.rb"

def file_to_triangle(s)
	s.map {|l| l.chop.split.map(&:to_i)}
end

if __FILE__ == $PROGRAM_NAME
  tri3 = File.readlines("67.txt")
	t3 = file_to_triangle(tri3)
	puts fold_triangle(t3)
end

