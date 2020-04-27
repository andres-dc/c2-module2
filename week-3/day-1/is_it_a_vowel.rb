class String
  def vowel?
    match(/\A[aeiou]\z/i) ? true : false
  end
end
