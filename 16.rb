n = 2**1000
ns = n.to_s
puts ns.each_char.inject(0) { |sum, x| sum += x.to_i }
