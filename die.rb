# die.rb 

class Die 

	def initialize
		roll
	end

	def roll
	@number_showing =	1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat
		puts "Pssst! What number do you want to come out?"
		@number_showing = gets.chomp.to_i
	end
end

# Let's make a couple of dice ..
dice = [Die.new, Die.new]

# ... and roll them !

dice.each do |die|
	puts die.roll
end

die = Die.new
die.roll
p die.showing
p die.showing
die.roll
p die.showing
p die.showing 

puts "-----------"

p Die.new.showing

puts "---bout2cheat---"

p die.cheat 