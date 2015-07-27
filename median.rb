=begin
There are two sorted arrays A and B of size m and n respectively. 
Find the median of the two sorted arrays. 
The overall run time complexity should be O(log (m+n)).

Analysis
If we see log(n), we should think about using binary something.

This problem can be converted to the problem of finding kth element, 
k is (A's length + B' Length)/2.

If any of the two arrays is empty, 
then the kth element is the non-empty array's kth element. 
If k == 0, the kth element is the first element of A or B.

For normal cases(all other cases), 
we need to move the pointer at the pace of half of an array length 
to get log(n) time.
=end


def median_finder(arrayA, arrayB)
	union_array = arrayA.push(*arrayB)
	union_array.sort!
	total_length = union_array.length 
	if total_length % 2 == 0
		(union_array[(total_length/2)-1] + union_array[(total_length/2)+1])/2
	else
		union_array[total_length/2]
	end
end

p median_finder([1,2,3],[5,6,7]) == 4
p median_finder([1,2,8,5], [29,20,33]) == 8
p median_finder([1,2,3,4],[6,7,8,9]) == 5

#tests
=begin
before do
	a = [1,2,3]
	b = [4,5,6]
	median_finder(a,b)
end

"it should return number inside the range"
	expect ((a[0]..b[-1]) === median_finder(a,b)).to be(true)
end

"it should "

=end