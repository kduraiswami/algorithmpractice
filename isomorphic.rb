=begin
	
Given two strings s and t, determine if they are isomorphic.

Two strings are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character 
while preserving the order of characters. No two characters may map 
to the same character but a character may map to itself.

For example,
Given "egg", "add", return true.
Given "foo", "bar", return false.
Given "paper", "title", return true.
=end

def isomorphic?(string1, string2)
	string1_unique_letters = Hash.new(0)
	string2_unique_letters = Hash.new(0)
	
	string1.split('').each do |letter|
		string1_unique_letters[letter] += 1
	end

	string2.split('').each do |letter|
		string2_unique_letters[letter] += 1
	end

	string1_unique_letters_count = string1_unique_letters.keys.length
	string2_unique_letters_count = string2_unique_letters.keys.length

	if string1_unique_letters_count == string2_unique_letters_count
		true
	else
		false
	end

end

p isomorphic?('egg', 'add')
p isomorphic?('paper', 'title')
p isomorphic?('wood', 'food')
p isomorphic?('foo', 'bar')

#tests
=begin

"it should yield true for one letter to one letter map"
	isomorphic("a","b").to be(truthy)
end

"it should yield true for "

=end