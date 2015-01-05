# recur.rb 

def ask_recursively question
	puts question
	reply = gets.chomp.downcase
		if reply == "yes"
			true
		elsif reply =="no"
			false
		else 
			puts "Please answer 'yes' or 'no'. "
			ask_recursively question #this is the magic line
		end
end

ask_recursively "Do you wet the bed ?"

def factorial num
	if num < 0
		return "You can't take the factorial of a negative num"
	end

	if num <= 1
		1
	else
		num * (factorial num-1)
	end
end

p factorial (1)
p factorial (3)
p factorial (-1999)
p factorial (43)