=begin
Do you think a simple Java array question can be a challenge? 
Let's use the following problem to test.

Problem: Rotate an array of n elements to the right by k steps. 
For example, with n = 7 and k = 3, 
the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4]. 
How many different ways do you know to solve this problem?
=end


def rotate!(array,steps)
	new_array = []
	n = array.size
	i = 1
	while i <= n
		new_array << array[(i + steps)%n]
		i += 1
	end
	return new_array
end

p rotate!([1,2,3,4,5,6,7], 3)
p rotate!([1,2,3], 2)

#tests
=begin
before do 
	array = [1,2,3,4,5]
	steps = 2
	new_array = rotate(array,steps)
end

"it should not change the length of the array"
	expect array.length to eq(new_array.length)
end

"it should contain the same elements"
	expect array.uniq.sort to eq(new_array.uniq.sort)
end

"it should move the first element two indices"
	expect array[0] to eq(new_array[2])
end

"it should return the same array if steps are equal to length"
	expect array to contain?(new_array)
end

=end