# questions.rb 

# def ask questions
# 	while true
# 		puts questions
# 		reply = gets.chomp.downcase

# 		if (reply =="yes" || reply =="no")
# 			if reply == "yes"
# 				answer = true
# 			else
# 				answer = false
# 			end
# 			break
# 		else
# 			puts "Please answer with YES OR NO"
# 		end
# 	end
# 	answer
# end

# puts "Hello, thanks for answering"
# puts

# ask "do you like tacos"
# ask "do you like burritoes"
# wets_bed = ask "do you wet the bed"
# ask "do you eat cheese"
# ask "are u a vega"
# puts
# puts "DEBRIEFING:"
# puts "thanks for answering"
# puts
# puts wets_bed

def ask questions
	while true
		puts questions
		reply = gets.chomp.downcase
		if reply == "yes"
			return true
		end
		if reply == "no"
			return false
		end
		puts "plans answer with yes or no"
	end
end

ask "do you like tacos"
ask "do you like burritoes"
wets_bed = ask "do you wet the bed"
ask "do you eat cheese"
ask "are u a vega"
puts
puts "DEBRIEFING:"
puts "thanks for answering"
puts
puts wets_bed