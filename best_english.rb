# best_english.rb 

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

	zillions = [['hundred', 2],
							['thousand', 3],
							['million', 6],
							['billion', 9],
							['trillion', 12],
							['quadrillion', 15],
							['quintillion', 18],
							['sextillion', 21],
							['septillion', 24],
							['octillion', 27],
							['nonillion', 30],
							['decillion', 33],
							['undecillion', 36],
							['duodecillion', 39],
							['tredecillion', 42],
							['quattuordecillion', 45],
							['quindecillion', 48],
							['sexdecillion', 51],
							['septendecillion', 54],
							['octodecillion', 57],
							['novemdecillion', 60],
							['vigintillion', 63],
							['googol', 100]]

	# "left"  is how much of the number we have left to write.
	# "write" is the part we are writting right now.

	left = number

	while zillions.length>0
		zil_pair = zillions.pop
		zil_name = zil_pair[0]
		zil_base = 10**zil_pair[1]
		write = left/zil_base 					# How many zillions left?
		left  = left - write*zil_base  # Substract those zillions

		if write > 0 
			# Now here's the recursion
			prefix = english_number write
			num_string = num_string + prefix + " " + zil_name

			if left > 0 
				# So we don't write "two billionseven million"
				num_string = num_string + " "
			end
		end
	end


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
puts english_number(56345234526123624562456124562456245624562456)