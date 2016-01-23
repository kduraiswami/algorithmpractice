
def permutation_detector(number)
	split_digits = number.to_s.split('')
	all_possible_permutations = split_digits.permutation.map(&:join)
	
	all_possible_permutations.each do |individual_permutation|
		return "YES" if individual_permutation.to_i % 8 == 0
	end

	return "NO"
end

p permutation_detector(123) == "YES"
p permutation_detector(61) == "YES"
p permutation_detector(75) == "NO"
p permutation_detector(8) == "YES"
p permutation_detector(7) == "NO"
