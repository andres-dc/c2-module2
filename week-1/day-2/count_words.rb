def count_words (str)
  out = { }

  str.downcase.split(' ').each do |x|
    !out[x] ? out[x] = 1 : out[x] += 1
  end

  out
end
