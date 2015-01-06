# doubler.rb

def doubler(start)
	puts start
	if start < 10
		doubler(start*2)
	end
end

puts doubler(10)
puts doubler(2)