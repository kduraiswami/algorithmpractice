def gem_element_counter(*rocks)
	
	# rocks.sort_by! { |element_composition| element_composition.length }
	first_rock = rocks[0].split('')
	gem_elements = []

	first_rock.each do |individual_element| 
		if common_gem?(individual_element,rocks[1..-1])
			gem_elements << individual_element
		end
	end

	return gem_elements.length 

end

def common_gem?(individual_element, rocks_in_question)
	individual_element_frequency = 0

	rocks_in_question.each do |individual_rocks|
		if individual_rocks.include?(individual_element)
			individual_element_frequency += 1
		end
	end

	if individual_element_frequency == rocks_in_question.length
		true
	else
		false
	end

end

# I have to go over the entire length at least
# is it easier to invert this challenge and count the unique letters? 
# I need to account for an unknown amount of arguments
# I could take every element of the first/shortest rock and check if every other rock has it


p gem_element_counter('abcdde','baccd','eeabg') == 2
p gem_element_counter('abcd','abc') == 3
p gem_element_counter('abcd','efgh') == 0
