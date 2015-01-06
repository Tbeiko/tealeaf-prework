# finals.rb 

# arr = [1,2,3,4,5,6,7,8,9,10]

# arr.each do |n| 
# 	if n > 5
# 		puts n
# 	else
# 	end
# end

# new_arr = arr.select{|n| n % 2 != 0}

# p new_arr

# arr.push(11)
# p arr

# arr.unshift(0)
# p arr

# arr[11] = 3
# p arr

# arr.uniq!
# p arr

# person = { name: "bob", age: 34, height: 1.7}

# bobby = { :name => "bobby", :age => "222"}

# h = {a:1, b:2, c:3, d:4}

# h[:b]

# h[:e] = 5

# h.delete_if {|k,v| v<3.5}

# EXERCISE 14
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}	
# fields = [:email, :address, :phone]

# contacts.each_with_index do |(name, hash), idx|
# 	fields.each do |field|
# 		hash[field] = contact_data[idx].shift
# 	end
# end
# p contacts



# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
# 	fields.each do |field|
# 		hash[field] = contact_data.shift
# 	end
# end

# p contacts 

# EXERCISE 15

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if {|word| word.start_with? "s"}

# p arr

# arr.delete_if {|word| word.start_with? ("s", "w")}

# EXERCISE 16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map {|n| n.split}
 p a 

a = a.flatten

p a



