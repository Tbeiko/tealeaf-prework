# fibo.rb 

def fibo(number)
	if number < 2
		number
	else 
		fibo(number - 1) + fibo(number - 2)
	end
end

puts fibo (6)

puts fibo (2)

