def pangram(sentence)
	if is_pangram?(sentence)
		puts "pangram"
	else
		puts "not pangram"
	end
end

def is_pangram?(sentence)
	sentence_array = sentence.split('') 
	letter_frequency_hash = Hash.new(0)

	sentence_array.each do |letter| 
		letter_frequency_hash[letter] += 1
	end

	if letter_frequency_hash.keys.length > 26 
		return true
	else
		return false
	end
end


pangram("the quick brown fox jumps over the lazy dog") 
pangram("We promptly judged antique ivory buckles for the next prize") 
pangram("We promptly judged antique ivory buckles for the prize") 