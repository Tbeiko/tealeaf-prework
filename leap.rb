# leap.rb 

p "Gimme a start year"
year1 = gets.chomp.to_i

p "Great, now give me an end year"
year2 = gets.chomp.to_i

p "perfect, now let's see what the leap years are between them."

while true
	if (year1 % 4 == 0) && (((year1 % 100 ==0) && (year1 % 400 == 0))||(year1 % 100 !=0))
		p year1
		year1 += 1
	elsif (year1 > year2)
		break
	else
		year1 +=1
	end
end