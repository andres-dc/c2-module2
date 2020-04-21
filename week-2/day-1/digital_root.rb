def digital_root(num)
  n = num.to_s.chars.map(&:to_i).inject(:+)
  n > 10 ? digital_root(n) : n
end

p digital_root(16) # 7
p digital_root(456) # 6 
