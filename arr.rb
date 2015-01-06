# arr.rb 
arr = []
puts "type many words"

while true
ans = gets.chomp
	if ans == ""
		break
	end
	arr.push ans 
end

p arr

arr.sort!

p arr