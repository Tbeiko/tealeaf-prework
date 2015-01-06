# proc.rb 

<<<<<<< HEAD
talk = Proc.new do |name|
	puts "I am talking to you, #{name}"
end 

talk.call "Tumooerter"

def take_proc(proc)
	[1,2,3,4,5].each do |number|
		proc.call number
	end
end

proc = Proc.new do |number|
	puts "#{number}. Proc being called in this method"
end

take_proc(proc)
=======
def maybe_do some_proc
	if rand(2) == 0
		some_proc.call
	end
end

def twice_do some_proc
	some_proc.call
	some_proc.call
end

wink = Proc.new do 
	puts '<wink>'
end

glance = Proc.new do 
	puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance 
>>>>>>> 4be7e2689dd67563a8e7c0f86b2a7d9f317fbb59
