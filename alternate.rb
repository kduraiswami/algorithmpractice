def alternate_count(string)
	string_letters = string.split('')
	letter_removal_count = 0
	i = 0 
	j = 1
	while j <= string_letters.length
		if string_letters[i] == string_letters[j]
			letter_removal_count += 1
		end
		i += 1 
		j += 1
	end

	return letter_removal_count

end

#need to test if a string has alternating characters
#a string with alternating characters will return the value 0
#a string with all the same characters will return a value one less than the length

p alternate_count("AAAA") == 3
p alternate_count("BBBBB") == 4
p alternate_count("ABABABAB") == 0
p alternate_count("BABABAB") == 0
p alternate_count("AAABBB") == 4