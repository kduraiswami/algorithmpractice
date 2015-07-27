def anagram_maker(string1, string2)
	string1_array = string1.split('')
	string2_array = string2.split('')

	combined_characters = string1_array << string2_array
	combined_characters.flatten!
	character_frequencies = Hash.new(0)
	
	combined_characters.flatten.each do |individual_letter|
		character_frequencies[individual_letter] += 1
	end 



	p combined_characters
	p character_frequencies
	p character_frequencies.keys.length
	p combined_characters.length

end

#anagrams have the same character set and length


p anagram_maker('cde', 'abc') == 4
p anagram_maker('abbddc', 'abbddcc') == 1
p anagram_maker('efght', 'tfgeh') == 0 
p anagram_maker('poito', 'ppoito') == 1
p anagram_maker('vvvvvxyz', 'xyzp') == 6