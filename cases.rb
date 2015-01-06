# cases.rb 

a = gets.chomp.to_i

answer = case a
	when 5
		puts "fiverrr"
	when 6
		puts "devils numba"
	else 
		puts hmmm other thing
end

puts answer 

b = 5

def verify(b)
	if b
		puts "how can this be"
	else
		puts "whatevs"
	end
end

verify(b)
b = 0
verify(b)
b = false
verify(b)
