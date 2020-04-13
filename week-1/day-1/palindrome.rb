def palindrome (str)
  str.downcase.gsub(/[\W]/, '') == str.downcase.gsub(/[\W]/, '').reverse
end
