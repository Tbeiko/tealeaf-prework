<<<<<<< HEAD
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
=======
# return.rb 

return_val = puts "this puts returned:"
puts return_val

def say_moo number_of_moos
	puts "moooooooooo..." * number_of_moos
	'yellow submarine'
end
x = say_moo 3
puts x.capitalize + ", dude..."
puts x + "."
>>>>>>> 4be7e2689dd67563a8e7c0f86b2a7d9f317fbb59
