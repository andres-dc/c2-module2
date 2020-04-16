def palindrome (str)
  str = str.downcase.gsub(/[\W]/, '')
  p str == str.reverse
end

palindrome('somos') # true
palindrome('somos,') # true
palindrome('no somos') # false
palindrome('Somos , SomOs') # true
