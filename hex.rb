# hex.rb 
# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.each do |k, v|
	puts k
end

family.each do |k, v|
	puts v
end

family.each do |k, v|
	puts k v
end