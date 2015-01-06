#grandma.rb 

ans = ""

p "Hi my dear !"

while true
	ans = gets.chomp
	if ans != ans.upcase
		p "HUH^! SPEAK UP SONNY"
	elsif (ans == "BYE") || (ans =="BYE!")
		p "WHAT"
		ans = gets.chomp
		if (ans == "BYE") || (ans =="BYE!")
			p "WHAT"
			ans = gets.chomp
			if (ans == "BYE") || (ans =="BYE!")
				p "Oh.. okay honey. Safe travels"
				break
			end
		end
	else
		p "NO NOT SINCE "+(1900+(rand(50))).to_s+" !"
	end
end