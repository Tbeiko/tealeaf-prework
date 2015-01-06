# bdayfile.rb 

# First, load in the birthdates

birth_dates = {}

File.read('birthdates.txt').each_line do |line|
	line = line.chomp

	# Find the index of the first comma, 
	# so we know where the name ends

	first_comma = 0

	while line[first_comma] != "," &&
					first_comma < line.length
		first_comma = first_comma + 1
	end

	