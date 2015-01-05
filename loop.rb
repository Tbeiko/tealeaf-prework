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
		break
	end
end