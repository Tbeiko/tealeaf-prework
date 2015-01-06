# hash.rb

def greeting(name, options ={})
	if options.empty?
		puts "Hi my name is #{name}"
	else
		puts "Hi my name is #{name}, my age is #{options[:age]} and I live in #{options[:city]}"
	end
end

greeting("Tim")
greeting("Tim", {age: 33, city: "NYC"})