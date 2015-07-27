def maximum_sum(array, modulo_number)
	possible_sums = subarray_sum_creator(array)
	maximum_sum = sum_modulo_creator(possible_sums, modulo_number)
	return maximum_sum.max
end

def subarray_sum_creator(array)
	possible_sums = []

	array.each_with_index do |anchor_position, index|
		i = index 
		j = i + 1
		while j < array.length
			possible_sums << array[index..j].inject{ |sum, x| sum + x}
			j += 1
		end
	end

	return possible_sums
end

def sum_modulo_creator(possible_sums, modulo_number)
	modulo_sums = [] 

	possible_sums.each do |individual_sum|
		modulo_sums << individual_sum % modulo_number
	end

	return modulo_sums
end

# I calculated every possible sum which is larger than the original array
# I calculated every possible modulo value which is equal to the above array
# I then do a search over the entire array for the max which is at worst the entire array

p maximum_sum([3,3,5,9,9],7) == 6
p maximum_sum([1,2,3],7) == 6
p maximum_sum([1,2,5],5) == 3
p maximum_sum([1,3,2],6) == 5
p maximum_sum([1,4,6,3,2],3) == 2
p maximum_sum([2,4,6,8],2) == 0
