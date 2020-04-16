def array_of_fixnums?(array)
  array.all? { |a| a.is_a? Fixnum }
end

array_of_fixnums?([1,2,3]) # true
array_of_fixnums?(['a',1,:b]) # false
array_of_fixnums?([]) # true
