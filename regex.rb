# regex.rb 

def has_a_b?(string)
	if /b/.match(string)
		puts "We have a match"
	else
		puts "Better luck next time !"
	end
end

has_a_b?("basket")
has_a_b?("bitches")
has_a_b?("babybellboyboom")
has_a_b?("ananas")