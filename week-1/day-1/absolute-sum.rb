def absolute_sum1 (a, b)
  if (a + b < 0)
    (a + b) * -1
  else
    a + b
  end
end

def absolute_sum2 (a, b)
  a + b < 0 ? (a + b) * -1 : a + b
end
