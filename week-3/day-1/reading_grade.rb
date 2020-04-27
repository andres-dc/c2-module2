require 'textstat'

def reading_grade(text)
  TextStat.coleman_liau_index(text)
end

text1 = %(
  In my younger and more vulnerable years my father gave me some advice that
  I've been turning over in my mind ever since.
)

text2 = %(
  Alice was beginning to get very tired of sitting by her sister on the bank,
  and of having nothing to do: once or twice she had peeped into the book her
  sister was reading, but it had no pictures or conversations in it, "and what
  is the use of a book," thought Alice "without pictures or conversation?"
)

p reading_grade(text1) # => 8.48
p reading_grade(text2) # => 9.07
