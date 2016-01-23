def sherlock_gcd(array)

	all_possible_combinations = (2..array.length).flat_map{|size| array.combination(size).to_a }

	all_possible_combinations.each do |single_combination|
		return "YES" if single_combination[0].gcd(single_combination[1]) == 1
	end

	return "NO"
end

p sherlock_gcd([1, 2, 3]) == "YES"
p sherlock_gcd([2, 4]) == "NO"
p sherlock_gcd([5, 5, 5]) == "NO"