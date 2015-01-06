<<<<<<< HEAD
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
=======
# loop.rb 

input = ""

while input != "bye"
	puts input
	input =gets.chomp
end

puts "see u soon"

while true
	puts "say something"
	input = gets.chomp
	puts input
	if input =="bye"
>>>>>>> 4be7e2689dd67563a8e7c0f86b2a7d9f317fbb59
		break
	end
end