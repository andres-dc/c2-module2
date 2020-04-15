def non_duplicated_values(values)
  p values.delete_if {|x| values.count(x) > 1 }
end

non_duplicated_values([1,2,2,3,3,4,5]) # [1,4,5]
