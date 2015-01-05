# log.rb 

$logger_depth = 0

def log desc, &block
	prefix = " "*$logger_depth

	puts prefix + "Beginning " + desc + "..."
	$logger_depth += 1
	result = block.call
	$logger_depth -= 1
	puts prefix + "...'" + desc + "' finished, returning: " + result.to_s
end

log 'outer block' do 
	log 'some little block' do 
		1**1 + 2**2
	end

	log 'yet another block' do
		'!doof iahT ekil I'.reverse
	end

	'0' == 0
end

log 'outest block' do
	log 'some little block' do
		log 'teeny-tiny block' do
			'lOtS of LOVE'.downcase
		end

		7*3*2
	end

	log 'yet another block' do
		'!okieB ehtomiT'.reverse
	end

	'0' == "0"
end

