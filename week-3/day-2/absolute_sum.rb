def absolute_sum(a, b)
  sum = a + b

  a + b < 0 ? sum * -1 : sum
end

p absolute_sum(0, -1)
