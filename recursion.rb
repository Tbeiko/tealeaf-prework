# recursion.rb 

def ask_recursively question
	puts question
	reply = gets.chomp.downcase

	if reply == "yes"
		true
	elsif reply == "no"
		false
	else
		puts "please answer 'yes' or 'no'."
		ask_recursively question # this is the recursive part
	end
end

ask_recursively "Do you wet the bed?"