def reduce(arr, initial)
  arr.length.times { |i| initial = yield(initial, arr[i]) }
  initial
end

test_array = [2, 3, 4, 5]
p reduce(test_array, 0) { |total_sum, current_value| total_sum + current_value }
# Result: 14
