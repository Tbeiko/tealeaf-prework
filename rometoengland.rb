# rometoengland.rb 

# THIS WAS MY WAY - did not work. 
# def englishNumbers

# 	p "Please type a roman numeral (ex: 'MMXVIII')"
# 	roman = gets.chomp.to_s
# 	english = 0

# 	def transform roman
# 		until roman == ""
# 			if    roman[0] == "M" 
# 				english = english + 1000
# 				roman.slice!(0)
# 			elsif roman[0] == "D"
# 				english = english + 500
# 				roman.slice!(0)
# 			elsif roman[0] == "C"
# 				english = english + 100
# 				roman.slice!(0)
# 			elsif roman[0] == "L"
# 				english = english + 50
# 				roman.slice!(0)
# 			elsif roman[0] == "X"
# 				english = english + 10
# 				roman.slice!(0)
# 			elsif roman[0] == "V"
# 				english = english + 5
# 				roman.slice!(0)
# 			elsif roman[0] == "X"
# 				english = english + 1
# 				roman.slice!(0)
# 			end
# 			transform
# 		end 
# 	end

# 	p "Your roman number was " + english.to_s
# end

# englishNumbers 

# THIS IS THE BOOK'S WAY 

def roman_to_integer roman
	digits_vals = { 'i' =>    1,
									'v' =>    5,
									'x' =>   10,
									'l' =>   50,
									'c' =>  100,
									'd' =>  500,
									'm' => 1000}
	total = 0
	prev = 0
	index = roman.length-1 

	while index >=0
		c = roman[index].downcase
		index -= 1  # My change from book's code : index = index - 1
		val = digits_vals[c]

		if !val
			p "This is not a valid roman numeral"
			return 
		end

		if val < prev
			val = val * -1
		else 
			prev = val
		end

		total = total + val
	end

	total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))
