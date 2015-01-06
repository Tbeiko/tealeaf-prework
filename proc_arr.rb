# proc_arr.rb 

class Array
	def each_even(&was_a_block_now_a_proc)
		# We start with 'true' because
		# arrays start with 0, which is even.
		is_even = true

		self.each do |object|
			if is_even
				was_a_block_now_a_proc.call object
			end

			# Toggle from even to odd, or odd to even
			is_even = !is_even
		end
	end

end

fruits = ['apple', 'pear', 'cherry','tomato']
fruits.each_even do |fruit|
	puts "Yum! I love #{fruit} pies, don't you ?"
end

# Remeber, we are getting that even numbered *elements*
# of the array, which in this case are all odd numbers/.

[1,2,3,4,5].each_even do |odd_ball|
	puts "#{odd_ball} is NOT an even number!"
end

