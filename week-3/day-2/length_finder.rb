def length_finder(arr)
  arr.map! { |x| x.length }
end

p length_finder(['asdf', 'qwerty', 'zserfbg'])
