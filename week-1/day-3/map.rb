def map(arr)
  newArr = []
  arr.length.times { |i| newArr << (yield arr[i]) }
  p newArr
end

test_array = [2, 3, 4, 5]
map(test_array) { |element| element * 3 }
# Result: [6, 9, 12, 15]
