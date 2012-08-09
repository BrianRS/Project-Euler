num = (1..100).inject(:*)

puts num.to_s.each_char.inject(0) {|sum, d| sum += d.to_i }

