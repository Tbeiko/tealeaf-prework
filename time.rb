# time.rb 

# What second was I born
bornTime = Time.local(1994,06,01)

p "I was born at #{bornTime}"

# When will I turn 1B seconds? 

billionSeconds = bornTime + 1000000000

p "I will be one billion seconds old at #{billionSeconds}"
