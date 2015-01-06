 # table.rb 

line_width = 100

puts "Table of Contents".center(line_width)
puts ("Chapter 1 : Life".ljust(line_width/2)) + ("p. 14".rjust(line_width/2))
puts ("Chapter 2 : Death".ljust(line_width/2)) + ("p. 100".rjust(line_width/2))

# NOW WITH AN  ARRAY 

table = ["Table of Contents", "Chapter 1 : Life","p. 14", "Chapter 2 : Death", "p.100" ]

line_width = 100

puts table[0].center(line_width)
puts table[1].ljust(line_width/2) + table[2].rjust(line_width/2)
puts table[3].ljust(line_width/2) + table[4].rjust(line_width/2)