def count_duplicates(arr)
  arr.length - arr.uniq!.length
end
