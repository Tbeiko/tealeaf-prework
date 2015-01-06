# age.rg
puts "what iz ur 1st name?"
first_name = gets.chomp

puts "what is ur last name"
last_name = gets.chomp

puts "How old r u ?"

age = gets.chomp.to_s

puts "u r "+ age + "yrs old"
age = age.to_i
puts "10 yrs from now u will be " 
puts age + 10

10.times {puts age}

puts "is this cool, "+first_name+" "+last_name