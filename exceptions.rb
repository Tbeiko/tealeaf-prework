# exceptions.rb 

names = ['bob', 'jane', nil]

names.each do |name|
	begin
		puts name.length
	rescue
		puts "something went wrong"
	end
end
