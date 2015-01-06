# orangetree.rb 

class Tree

def initialize name
	@name = name
	@treeAge    = 0
	@treeHeight = 1
	@fruit_count = 0
	@water_count = 0
	@firstFruit = 0
end

def action
	puts "Do you want to water your tree?"
	answer = gets.chomp
	if answer.downcase == "yes"
		water
	elsif answer.downcase == "no"
		wait
	else 
		puts "I didn't get that... please answer with 'yes' or 'no'."
		action
	end
end

def water
	puts
	puts "Ok let's water your tree"
	puts
	one_year_passes
	@water_count += 1
	fruits 
	puts "Now let's wait ..."
	puts ".................."
	puts ".................."
	puts ".................."
	puts "ONE YEAR HAS PASSED!"
	puts
	puts "Your tree is now " + @treeHeight.to_s + " meters high!"
	puts
	if @fruit_count    == 0
		puts "No fruits yet, though."
		puts
	elsif (@fruit_count == 1) && (@firstFruit == 0)
		puts "YOU GOT YOUR FIRST FRUIT! IT'S AN ORANGE! :-D "
		@firstFruit = 1
			puts "Do you want to eat it?"
			puts
			answer = gets.chomp
				if answer.downcase == "yes"
					puts "NOM NOM NOM"
					puts "DE-LI-CI-OUS!!!"
					puts
					@fruit_count -= 1
				elsif answer.downcase == "no"
					puts "Ok then!"
					puts
				else
					puts "Oops, the fruit fell on the ground! Better luck next time! :-( "
					puts
					@fruit_count -= 1
				end
	else
		puts "Not bad ! Your tree now has " + @fruit_count.to_s + " oranges."
		puts "Do you want to eat one of them?"
		puts
		answer = gets.chomp
			if answer.downcase == "yes"
				puts "NOM NOM NOM"
				puts "DE-LI-CI-OUS!!!"
				puts
				@fruit_count -= 1
			elsif answer.downcase == "no"
				puts "Ok then!"
				puts
			else
				puts "Oops, the fruit fell on the ground! Better luck next time! :-( "
				puts
				@fruit_count -= 1
			end
	end
	action
end

def wait
	one_year_passes
	puts "Let's wait then..."
	10.times{puts ".................."}
	puts
	action
end


	private

	def one_year_passes
		@treeAge += 1
		@treeHeight += 0.25
		if @treeAge >= 5
			puts "Oh no, your tree died! :'-( "
			puts
			puts "Oh well, it had a good life!"
			puts
			exit
		end
	end


	def fruits
		if @water_count > 1
			@fruit_count += 1
		end
	end


end

def plant
	puts "Do you want to plant a tree?"
	answer = gets.chomp
	if answer.downcase == "yes"
		puts "What do you want to call it?"
		@name= gets.chomp
		@myTree = Tree.new @name
		puts "Awesome ! You've planted #{@name}."
	elsif answer.downcase == "no"
		puts "Ok then! Goodbye!"
		exit
	else
		puts "Didn't get that .. ! Please answer with 'yes' or no'."
		plant
	end
end

plant 
@myTree.action 

