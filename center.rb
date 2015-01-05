# center.rb 

line_width = 100
p ("my momma".center(line_width))
p ("she had me saaaay".center(line_width))
p ("them nasty thingss".center(line_width))
p ("to my girl.")

line_width = 23 
str = "oh momma"
p (str.ljust(line_width))
p (str.center(line_width))
p (str.rjust(line_width))
p (str.ljust(line_width/2)) + (str.rjust(line_width/2))