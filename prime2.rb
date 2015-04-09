def is_prime(n)
("1" * n) !~ /^1?$|^(11+?)\1+$/
end
puts "2"
puts "3"
puts "5"
puts "7"
m = 3
while m < 100000
	if m % 3 != 0 && m % 5 !=0 && m % 7 != 0
	if is_prime(m)
	puts m
	end
	end
	m+=2
end