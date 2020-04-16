def absolute_sum1 (a, b)
  sum = a + b

  if (a + b < 0)
    sum * -1
  else
    sum
  end
end

def absolute_sum2 (a, b)
  sum = a + b

  a + b < 0 ? sum * -1 : sum
end
