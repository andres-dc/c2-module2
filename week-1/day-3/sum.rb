def sum(*num)
  p num.reduce(:+)
end

sum(10, 2, 3, 4, 5, 1, 20)
