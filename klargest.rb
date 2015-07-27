=begin
Find the kth largest element in an unsorted array. 
Note that it is the kth largest element in the sorted order, 
not the kth distinct element.

For example, given [3,2,1,5,6,4] and k = 2, return 5.

Note: You may assume k is always valid, 1 ≤ k ≤ array's length.
=end

def klargest(array, klargest)
	if klargest > array.length
		"error"
	else
		array.sort!
		return array[klargest*-1]
	end
end

p klargest([1,2,3,4],1) == 4
p klargest([1,2,3,4],2) == 3
p klargest([1],1) == 1
p klargest([1,2],3) == "error"

=begin
#tests
before each do 
	array = [1,4,3,2]
end
"it should return the largest number if k = 1"
	expect klargest(array, 1).to be(4)
end

"it should return 3 if k = 2"
	expect klargest(array, 2).to be(3)
end

=end