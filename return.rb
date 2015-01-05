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