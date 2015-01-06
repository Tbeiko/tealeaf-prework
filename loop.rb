# loop_example.rb

i = 0

loop do 
	puts "Hi girl, wanna go out?"
	puts "yes i do"
	i += 1
	if i > 100 
		next
	end
	puts "#{i}"
	if i == 140
		break
	end
end