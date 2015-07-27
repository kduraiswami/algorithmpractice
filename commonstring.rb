def common_string(string1, string2)

	string1_array = string1.split('')
	string1_letter_frequency = Hash.new(0)

	string1_array.each do |individual_letter|
		string1_letter_frequency[individual_letter] +=  1
	end

	string2_array = string2.split('')
	string2_letter_frequency = Hash.new(0)

	string2_array.each do |individual_letter|
		string2_letter_frequency[individual_letter] +=  1
	end

	all_unique_letters = []
	all_unique_letters_frequency = Hash.new(0)

	all_unique_letters = string1_letter_frequency.keys + string2_letter_frequency.keys
	all_unique_letters.each do |individual_letter|
		all_unique_letters_frequency[individual_letter] += 1
		if all_unique_letters_frequency[individual_letter] > 1
			return "YES"
		end
	end

	return "NO"

end

# this solution goes over the entire dataset at worst 4 times and at least 3 times each- ouch
# I like that I can escape immediately when creating hash
# I wish I had a more efficient way of getting the unique characters of the inputs

p common_string("hello","world") == "YES"
p common_string("poly", "morphic") == "YES"
p common_string("santa", "claus") == "YES"

p common_string("hi", "world") == "NO"
p common_string("polly", "mer") == "NO"
p common_string("pool", "guy") == "NO"