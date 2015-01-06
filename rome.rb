# rome.rb 

#MY FAILED ATTEMPT AT IT

# def rome num
# 	n = ""
# 	if n >=1000
# 		n +=("M"*(n/1000))
# 	end
# 	if n >= 500
# 		n +=("D"*((n%1000)/500))
# 	end
# 	if n >= 100
# 		n +=("C"*(((n%1000)%500)/100))
# 	end
# 	if n >= 50
# 		n +=("L"*((((n%1000)%500)%100)/50))
# 	end
# 	if n >= 10
# 		n +=("X"*(((((n%1000)%500)%100)%50)/10))
# 	end
# 	if n >= 5
# 		n +=("X"*((((((n%1000)%500)%100)%50)%10)/5))
# 	end
# 	if n >=1
# 		n +=("I"*((((((n%1000)%500)%100)%50)%10%5)))
# 	end

# puts n 
	
# end

#THE ANSWER'S WAY

def rome num
	roman = ""
	roman = roman + "M" * (num				/1000)
	roman = roman + "D" * (num%1000   	/500)
	roman = roman + "C" * (num%500   	  /100)
	roman = roman + "L" * (num%100      	/50)
	roman = roman + "X" * (num%50       	/10)
	roman = roman + "V" * (num%10     	   /5)
	roman = roman + "I" * (num%5           /1)
end

p rome(1)
p rome(2)
p rome(4)
p rome(5)
p rome(7)
p rome(9)
p rome(10)
p rome(43)
p rome(50)
p rome(89)
p rome(100)
p rome(271)
p rome(500)
p rome(893)
p rome(1000)
p rome(4834)