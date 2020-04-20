print 'Who? '
who = gets.chomp

def twofer(who = "you")
  p "One for #{who}, one for me."
end

twofer
twofer("null")
