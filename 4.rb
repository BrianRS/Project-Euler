def is_palindrome?(n)
	s = n.to_s
	half_s = s.length/2
	0.upto half_s do |i|
		return false if s[i] != s[-i-1]
	end
	true
end

def find_palindromes
	pals = []
	100.upto 999 do |i|
		100.upto 999 do |j|
			p = i*j
			if is_palindrome? p
				pals << p
			end
		end
	end
	pals
end

puts find_palindromes.max
