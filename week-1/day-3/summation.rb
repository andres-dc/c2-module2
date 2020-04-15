def summation(n)
  p Array (1..n).map { |val| yield val }.reduce(0, :+)
end

summation(3) { |val| val * 2 } # 12
