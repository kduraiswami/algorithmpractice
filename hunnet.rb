numbers = [0, 1, 100, 99, 0, 10, 90, 30, 55, 33, 55, 75, 50, 51, 49, 50, 51, 49, 51]


#write an algorithm that will find pairs of numbers in the above array that add up to 100

def find_pairs_for_sum(sum,array)
	pairs = []
	array.each do |potential_number|
		if array.include?(sum-potential_number)
			unless pairs.include?([potential_number, sum-potential_number].reverse)
				pairs << [potential_number, sum-potential_number]
			end
		end
	end
	return pairs
end

p find_pairs_for_sum(100, numbers)

# tests
=begin

before each do
	array = [0, 1, 100, 99, 0, 10, 90, 30, 55, 33, 55, 75, 50, 51, 49, 50, 51, 49, 51]
	find_pairs_for_sum(100, array)
end

it should choose only two numbers per pair
expect pair.length to be(2)	

it should choose two numbers that equal the correct sum
expect results[0][0] + results[0][1] to be(100)

	
=end