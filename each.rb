<<<<<<< HEAD
# each.rb

names = ["tim", "cvat00", "love", "tom", "cyun"]
x = 1

names.each do |name|
	puts "#{x}. #{name}"

	x += 1
=======
# each.rb 

languages = ["english", "french", "japanese"]

languages.each do |lang|
	puts "I love "+ lang
end

3.times do
	languages.each do |l|
		puts l
	end
end

languages.each do |l|
	3.times do
		puts l
	end
end

p languages.join

p languages.to_s

200.times do
	puts []
end

3.times do
	puts [1,2,[3,4]]
	p ["a", "b", "cde", ["ee","232"]]
>>>>>>> 4be7e2689dd67563a8e7c0f86b2a7d9f317fbb59
end