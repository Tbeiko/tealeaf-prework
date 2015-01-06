# saver.rb 

# The filename doesn't have to end with ".txt"
# but since it is valid text, why not ?

filename = 'ListerQuote.txt'
test_string = "I know it's going to work out, " + 
							" even if it's harder than expected!"

# The "w" here is for write access to the file. 

File.open filename, 'w' do |f| 
	f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)