def is_prime(n)
("1" * n) !~ /^1?$|^(11+?)\1+$/
end
m=gets.to_i
p is_prime(m)