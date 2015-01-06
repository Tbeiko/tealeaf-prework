#return.rb

def add_three(number)
	number + 3
end

returned_value = add_three(4)
puts returned_value

def add_two(number)
	return number + 3
end

returned_value = add_two(4)
puts returned_value