def filter(arr)
  newArr = []
  arr.length.times { |i| newArr << arr[i] if yield arr[i] }
  p newArr
end

test_array = [2, 3, 4, 5]
filter(test_array) { |element| element > 3}
# Result: [4, 5] -> numbers 2 and 3 were removed
