def possible_palindrone?(string)
	hash_of_letter_frequency = Hash.new(0)
	string_array = string.split('')

	string_array.each do |letter|
		hash_of_letter_frequency[letter] += 1
	end

	unless hash_of_letter_frequency.keys.length % string_array.length  <= 1
		return true
	else
		return false
	end


end

p possible_palindrone?('abcddabc') == true
p possible_palindrone?('abcd') == false
p possible_palindrone?('aaabbbb') == true
p possible_palindrone?('abcccba') == true
p possible_palindrone?('ccddeeffeeccdd') == true
p possible_palindrone?('cdcdcdcdeeeef') == true
p possible_palindrone?('cdefghmnopqrstuvw') == false
p possible_palindrone?('obb') == true
p possible_palindrone?('a') == false
