# index.rb 

a = [1,2,4,5,6,7]
x = 1

a.each_with_index do | num, index |
	puts "#{index+1}. #{num}"
end

def countdown(x)
	if x <=0
		puts x
	else
		puts x
		countdown(x-1)
	end
end

countdown(5)
countdown(100)
	 