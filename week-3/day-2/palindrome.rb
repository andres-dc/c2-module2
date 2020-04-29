def palindrome(str)
  str = str.downcase.gsub(/[\W]/, '')
  p str == str.reverse
end
