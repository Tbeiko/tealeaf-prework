# good_english.rb 

def english_number number 
	if number < 0 # No negatives
		return "Please enter a positive number"
	end 

	if number == 0
		return "zero"
	end

	# No more special cases ! No more returns !

	num_string = "" # This is the string we will return 

	ones_place = ['one', 'two', 'three',
								'four', 'five', 'six',
								'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty',
								'forty', 'fifty', 'sixty',
								'seventy', 'eighty', 'ninety']

	teenagers  = ['eleven', 'twelve', 'thirteen',
								'fourteen', 'fifteen', 'sixteen',
								'seventeen', 'eighteen', 'nineteen']

	# "left"  is how much of the number we have left to write.
	# "write" is the part we are writting right now.

	left = number
	write = left/100        # How many hundreds
	left = left - write*100 # Substract those hundreds

	if write > 0 
		# Now here's the recursion
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred'
		if left > 0 
			# So we don't write "two hundredforty four"
			num_string = num_string + " "
		end
	end

	write = left/10        # How many tens left
	left = left - write*10 # Substract those tens 

	if write > 0 
		if ((write ==1 ) and (left > 0))
			# Since we can't write "tenty-two",
			# we need a special case for these 
		num_string = num_string + teenagers[left-1]
		left = 0
	else
		num_string = num_string + tens_place[write-1]
	end

		if left > 0
			# so we don't write "sixtyfour"
			num_string = num_string + "-"
		end
	end

	write = left 
	left  = 0

	if write > 0 
		num_string = num_string + ones_place[write-1]
	end

	num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)