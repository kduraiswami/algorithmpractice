def hashsort(unsorted_hash)
	# the output of this will be an array of the keys sorted by length
	output_array = []
	max_length = 0 

	unsorted_hash.each do |key, value|
		output_array << key.to_s
	end

	output_array.sort_by { |hash_key| hash_key.length }

end

unsorted_hash = { abc: 'hello', 'another_key' => 123, 4567 => 'third'}

p hashsort(unsorted_hash)