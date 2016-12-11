def sherlock_sum(array)
	
	if array.empty?
		return "NO"
	end

	i = 1 
	left_array = []
	right_array = []

	if array[1..-1].inject{ |sum, x| sum + x } == 0
		return "YES"
	end

	while i < array.length
		left_array = array[0..(i-1)]
		right_array = array[i+1..-1]
		if left_array.inject{ |sum, x| sum + x} == right_array.inject{ |sum, x| sum + x }
			return "YES"
		end
		i += 1
	end

	if array[0..-2].inject{ |sum, x| sum + x } == 0
		return "YES"
	end

	return "NO"
end

p sherlock_sum([]) == "NO"
p sherlock_sum([1,2,3]) == "NO"

p sherlock_sum([-1,1,0,2]) == "YES"
p sherlock_sum([-5,-4,-3,-2,-1,5,4,3,2,1,0,-1,-2,-3,-4,-5,1,2,3,4,5]) == "YES"
p sherlock_sum([1,2,3,3]) == "YES"
p sherlock_sum([1,0,-2,2]) == "YES"




