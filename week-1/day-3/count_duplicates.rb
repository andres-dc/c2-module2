# THE EASY ONE
def count_duplicates(arr)
  p arr.length - arr.uniq!.length
end


# THE HARD ONE
def count_duplicates_the_revenge (arr)
  # variable to count duplicates -- will use later
  count = 0

  arr.length.times do |i|
    # take elements from array starting at i into another array
    tempArr = arr.drop(i)
    
    # delete them from original array
    arr.slice!(i..-1)

    # save min and its position
    tempNum = tempArr.min
    position = tempArr.index(tempArr.min)

    # delete min from its position on the temporary aray
    tempArr.slice!(position)
    
    # insert min into original array
    arr << tempNum

    # insert the rest of the elements
    arr = arr + tempArr
  end

  # if each position is repetead elsewhere in the array, add it to the count
  arr.each_index { |i| count += 1 if arr.rindex(arr[i]) != i }

  # print result
  p count
end

numbers_1 = [1, 2, 3, 2, 5, 8, 5, 10, 5]
numbers_2 = [17, 13, 19, 17, 19, 7, 10, 11, 5, 11, 18, 13, 3, 12, 19, 0, 17, 1, 12, 12, 5, 12, 1, 1, 0, 14, 5, 4, 9, 9, 3, 10, 9, 9, 12, 16, 9, 17, 12, 11, 2, 2, 14, 8, 11, 12, 7, 1, 16, 2, 14]

count_duplicates_the_revenge(numbers_1)
# -> 3
count_duplicates_the_revenge(numbers_2)
# -> 33
