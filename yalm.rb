# yalm.rb 

require 'yaml'

test_array = ["Baby let's do it", "Well...", "OK!"]

test_string = test_array.to_yalm

filename = 'yamltest.txt'

File.open filename 'w' do |f| 
	f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array  == test_array)