# hbd.rb 

puts 'What year were you born?'
b_year = gets.chomp.to_i

def bornInMonth 
	p "What month where you born?"

		@birthMonth = gets.chomp

		if @birthMonth.downcase    == "january"
			@birthMonth == 1
		elsif @birthMonth.downcase == "february"
			@birthMonth == 2
		elsif @birthMonth.downcase == "march"
			@birthMonth == 3
		elsif @birthMonth.downcase == "april"
			@birthMonth == 4
		elsif @birthMonth.downcase == "may"
			@birthMonth == 5
		elsif @birthMonth.downcase == "june"
			@birthMonth == 6
		elsif @birthMonth.downcase == "july"
			@birthMonth == 7
		elsif @birthMonth.downcase == "august"
			@birthMonth == 8
		elsif @birthMonth.downcase == "september"
			@birthMonth == 9
		elsif @birthMonth.downcase == "october"
			@birthMonth == 10
		elsif @birthMonth.downcase == "november"
			@birthMonth == 11
		elsif @birthMonth.downcase == "december"
			@birthMonth == 12
		else
			puts "Please spell out the month's name entirely."
			bornInMonth
		end
end

bornInMonth

puts 'What day of the month were you born?'
b_day = gets.chomp.to_i

b = Time.local(b_year, @birthMonth, b_day)

p "You were born at " + b.to_s
