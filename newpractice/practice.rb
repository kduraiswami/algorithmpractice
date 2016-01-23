def repeat_letter?(name)
	chars = name.split('')

	frequency = Hash.new(0)

	chars.each do |letter|
		frequency[letter] += 1
	end

	chars.length != frequency.keys.length ? true : false

end

p repeat_letter?("kailash") == true
p repeat_letter?("tony") == false
p repeat_letter?("slik") == false
p repeat_letter?("anjali") == true