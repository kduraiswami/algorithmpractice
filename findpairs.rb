test_1 = [0, 1, 2, 98, 99, 100, 101] #[1,98], [2,98]
test_2 = [95,5,95] #[95,5]
test_3 = [95,5,5,95] #[95,5],[5,95]


def find_pairs(sum, array)
	array.sort!
	pairs = []
	i = 0 
	j = array.length - 1 

	while (i < j)
		lower_bound = array[i]
		upper_bound = array[j]
		if (lower_bound + upper_bound == sum)
			pairs.push([lower_bound,upper_bound])
			i += 1
			j -= 1
		elsif (lower_bound + upper_bound < sum)
			i += 1
		else
			j -= 1
		end
	end

	return pairs
end

p find_pairs(100, test_1) 
p find_pairs(100, test_2)
p find_pairs(100, test_3)
