# gets.rb 

puts "tell me ur name"

name = gets.chomp

p name 

puts "tell mi ur fav #"

num = gets.chomp.to_i

p num+100

# this works
p 'pig'*5

#this doesn't
# p 5*'pig'