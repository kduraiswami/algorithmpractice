=begin

write an algorithm that will sort an array from lowest to highest value


=end

def merge_sort(lst)
  if lst.length <= 1
    lst
  else
    mid = (lst.length / 2).floor
    left = merge_sort(lst[0..mid - 1])
    right = merge_sort(lst[mid..lst.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

p sort([4,3,2,1])
p sort([4,3,2,1]) == [1,2,3,4]
p sort([-1,-2,3,2]) == [-2,-1,2,3]


# tests
=begin
"it should return a sorted array duh" do
	expect sort([4,3,2,1]).to be([1,2,3,4])
end

"it should not get confused by negative numbers" do
	expect sort(negative_array).to be([-4,-2,1,2])
end


=end