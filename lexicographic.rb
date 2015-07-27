def lexicographic_finder(string)
	string_array = string.split('')
	lexicographic_minimum = string_array.sort!

	p lexicographic_minimum
	until lexicographic_minimum.join('') < string_array.join('')
		lexicographic_minimum
	end


	if lexicographic_minimum == string_array
		lexicographic_minimum = ["n","o", " ", "a","n","s","w","e","r"]
	end

	return lexicographic_minimum.join('')

end

# if we start from the right side of the word we can switch the [-1]
# with the "closest" value 
# I want to compare the right letter to the next, if right is "greater" then switch, 
# if the right letter is 

# if the right letter is right next to the 
# the placement of the letter itself matters as well as 
# the value of the letter itself




p lexicographic_finder("ab") == "ba"
p lexicographic_finder("bb") == "no answer"
p lexicographic_finder("hefg") == "hegf"
p lexicographic_finder("dhck") == "dhkc"
p lexicographic_finder("dkhc") == "hcdk"
p lexicographic_finder("abcd") == "abdc"
p lexicographic_finder("dcba") == "dcab"