# yammer.rb 

require 'yaml'

def yaml_save object, filename
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load filename
	yaml_string = File.read filename

	YAML::load yaml_string
end

arr = ['Love bites', 
			'Friend ship', 
			'Heat seeker', 
			'Blue brick']

filename = "FancyPants.txt"

# We save it ...
yaml_save arr, filename 

# We load it ...
read_array = yaml_load filename

puts(read_array == arr)