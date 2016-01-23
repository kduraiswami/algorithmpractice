def gem_element_counter(*rocks)
	
	first_rock = rocks[0].split('')
	gem_elements = []

	first_rock.each do |individual_element| 
		if gem_element?(individual_element,rocks[1..-1])
			gem_elements << individual_element
		end
	end

	return gem_elements.length 

end

def gem_element?(individual_element, rocks_in_question)
	if detect_element_frequency(individual_element, rocks_in_question) == rocks_in_question.length
		true
	else
		false
	end
end

def detect_element_frequency(individual_element, rocks_in_question)
	individual_element_frequency = 0

	rocks_in_question.each do |individual_rocks|
		if individual_rocks.include?(individual_element)
			individual_element_frequency += 1
		end
	end

	return individual_element_frequency
end	


p gem_element_counter('abcdde','baccd','eeabg') == 2
p gem_element_counter('abcd','abc') == 3
p gem_element_counter('abcd','efgh') == 0
